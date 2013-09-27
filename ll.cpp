#include <stdio.h>
#include <stdlib.h>
using namespace std;

struct ll
{
  int value;
  struct ll *next;
};

void append(int val,struct ll **head){
	struct ll *elem;
	struct ll *tmp;
	elem=(struct ll *)malloc(sizeof(struct ll));
	tmp=(struct ll *)malloc(sizeof(struct ll));
	elem->value=val;
	elem->next=NULL;
	tmpHead=*head;
}

void add_elem(int val,struct ll **head){
  struct ll *elem;
  elem=(struct ll *)malloc(sizeof(struct ll));
  elem->value=val;
  elem->next=*head;
  *head=elem;
}

void del_elem(struct ll **head){
  struct ll *tmp;
  tmp=*head;
  *head=tmp->next;
  free(tmp);
}

void print_elems(struct ll *head)
{
    while(head != NULL)
    {
        printf("head: %d\n", head->value);
        head = head->next;
    }
    printf("\n");
}


int main(){
  struct ll *head;
  add_elem(1,&head);
  print_elems(head);
  add_elem(34,&head);
  print_elems(head);
  add_elem(54,&head);
  add_elem(12,&head);
  print_elems(head);
  del_elem(&head);
  del_elem(&head);
  del_elem(&head);
  print_elems(head);
  return 0;
}
