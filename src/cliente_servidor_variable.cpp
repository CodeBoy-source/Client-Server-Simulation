#include <math.h>
#include <chrono>
#include <vector>
#include <string>
#include <iomanip>
#include <sstream>
#include <fstream>
#include <unistd.h>
#include <iostream>
#include "../../include/utils.h"

using namespace std;
using namespace std::chrono;

float ratio_ = 1.0;
float tlleg=0.15;
float tserv=0.1;
int total_a_atender = 10000;
float infinito = 10e30; //tiempo en que ocurren cosas que sabemos no pueden ocurrir
int atendidos = 0; //al principio no hay nadie ya atendido
float inicio_ocio = 0.0; //marcará el momento en que el servidor empieza a estar ocioso
float acum_cola = 0.0; //acumulador de número de clientes en cola por el tiempo en que están en
                       //dicha cola. El cliente que está siendo atendido NO está en cola
float ocio = 0.0;
float tultsuc = 0.0;
float reloj = 0; //marca el valor del tiempo simulado, inicialmente cero
bool servidor_libre = true; //inicialmente el servidor no está atendiendo a nadie
int encola = 0; //no hay nadie en cola todavía
float tiempo_llegada = reloj + generallegada(tlleg); //en ese tiempo llegará el primer cliente
float tiempo_salida = infinito; //nadie puede salir si nadie ha entrado aun

void initialize(float tlleg, float tserv, int total);

int main(int argc, char** argv) {
    srand(time(NULL));
    if(argc<=3){
        cerr << "[ERROR]: Expected >=3 args, got " << argc << endl;
        cerr << "[ERROR]: Execution: ./main [tlleg] [tserv] [total_a_atender](0,+inf) OPTIONAL: [STORE_RESULTS](Default:True) [REPEAT_N_TIMES](Default:1)" << endl;
        exit(-1);
    }
    unsigned int MEAN = 1;
    float base_tlleg = atof(argv[1]);
    float base_tserv = atof(argv[2]);
    if(atoi(argv[3])<=0){
        cerr << "[ERROR]: Invalid number for total_a_atender" << endl;
        exit(-2);
    }
    int base_total = atoi(argv[3]);
    int streambuffer = 1;
    if(argc>4){
        if(atoi(argv[4])==0)
            streambuffer = 0;
    }
    if(argc>5){
        if(atoi(argv[5])>0)
            MEAN = atoi(argv[5]);
    }
    // Try to store the results in a file
    string path;
    stringstream oss;
    ofstream data;
    if(streambuffer==1){
        path = get_selfpath();
        path = path.substr(0,path.find_last_of("/\\") + 1);
        oss << path << "../resultados/incremento-" << "VARIABLE"
            << "-Tlleg:" << base_tlleg << "-Tserv" << base_tserv << ".txt";
        data.open(oss.str(),ios::out|ios::trunc);
        if(!data.is_open()){
            cerr << "[ERROR]: Couldn't open file to save results" << endl;
            streambuffer = 0;
        }
    }

    for(unsigned int i=0;i<MEAN;i++){
        auto start = high_resolution_clock::now();
        initialize(base_tlleg,base_tserv,base_total);
        while (atendidos < total_a_atender) //simularemos hasta que hayamos atendido a cierto
        {
            reloj = min(tiempo_llegada, tiempo_salida);
            if (reloj == tiempo_llegada) //si estamos en el instante en que llega alguien
            {
                tiempo_llegada = reloj + generallegada(tlleg); //determinamos cuando llegará
                                                               //el siguiente cliente
                if (servidor_libre) //si el servidor está ocioso
                {
                    servidor_libre = false; //deja de estarlo
                    tiempo_salida = reloj + generaservicio(tserv); //determinamos cuando saldrá
                                                                   //ese cliente que acaba de llegar
                    ocio += reloj - inicio_ocio; //acumulamos el ocio hasta este momento
                }
                else { //el servidor está ocupado
                    acum_cola += (reloj - tultsuc) * encola; //acumulamos el número de clientes en
                                                             //cola por el tiempo en que han estado en cola
                    tultsuc = reloj; //para saber en qué momento cambió el tamaño de la cola, en
                                     //este caso aumentó en uno más
                    encola ++;  //hay un cliente más en cola
                }
            }
            if (reloj == tiempo_salida) //si estamos en el instante en que se va alguien
            {
                atendidos++;
                if (encola > 0) //si quedan clientes en cola
                {
                    acum_cola += (reloj - tultsuc) * encola; // acumulamos el número de clientes en
                                                             //cola por el tiempo en que han estado en cola
                    tultsuc = reloj; //para saber en qué momento cambió el tamaño de la cola, en
                                     //este caso disminuyó en uno
                    encola  --; //hay un cliente menos en cola
                    tiempo_salida = reloj + generaservicio(tserv); //determinamos cuando saldrá
                                                                   //ese cliente que acaba de entrar
                }
                else { //no quedan clientes en cola
                    servidor_libre = true; //el servidor se queda ocioso por falta de clientes
                    inicio_ocio = reloj; //marcamos cuando empieza a estar ocioso
                    tiempo_salida = infinito; //nadie puede salir puesto que nadie hay
                }

                progress_bar(
                        raNge1(
                            atendidos+total_a_atender*i, total_a_atender*MEAN
                            )
                        );
            }
        }
        float porcent_ocio = ocio*100/reloj; //calculamos el porcentaje de tiempo de ocio del servidor
        float media_encola = acum_cola/reloj; //calculamos el número medio de clientes en cola
        auto stop = high_resolution_clock::now();
        chrono::duration<float, std::milli> duration = stop - start;
        if(streambuffer==0){
            cout << endl;
            cout << porcent_ocio << setw(10) << media_encola << setw(10)
                << duration.count()<< endl;
        }else{
            data << setprecision(5) << setw(10) << i << setw(10)
                << porcent_ocio << setw(10) << media_encola << setw(10)
                << duration.count() << endl ;
        }
    }
    cout << endl;
    return 0;
}

void initialize(float lleg, float serv, int total){
    tlleg=lleg;
    tserv=serv;
    total_a_atender = total;
    infinito = 10e30; //tiempo en que ocurren cosas que sabemos no pueden ocurrir
    atendidos = 0; //al principio no hay nadie ya atendido
    inicio_ocio = 0.0; //marcará el momento en que el servidor empieza a estar ocioso
    acum_cola = 0.0; //acumulador de número de clientes en cola por el tiempo en que están en
                     //dicha cola. El cliente que está siendo atendido NO está en cola
    ocio = 0.0;
    reloj = 0; //marca el valor del tiempo simulado, inicialmente cero
    tultsuc = 0.0;
    servidor_libre = true; //inicialmente el servidor no está atendiendo a nadie
    encola = 0; //no hay nadie en cola todavía
    tiempo_llegada = reloj + generallegada(tlleg); //en ese tiempo llegará el primer cliente
    tiempo_salida = infinito; //nadie puede salir si nadie ha entrado aun
}
