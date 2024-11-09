#include "./bintree.h"

int main(){

    btree arvore;
    btree* endereco = &arvore;
    create_b_tree(&endereco);
    int opcao = 1, valor;
    while(opcao != 0){
        opcao = bt_menu(endereco);
    }

    //cut_tree(endereco->root);

    return 0;
}