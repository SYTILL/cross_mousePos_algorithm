int cas = 0;
int x=0, y=0;
int mx,my;

void setup(){
    size(600,600);
    textSize(32);
    loop();
}

void draw(){
    background(224);
    grid();
    text("case: ("+x+','+y+')',50,30);
    mousePos();
    if(mousePressed){
        if(x%2==0) rect(x*100-2,y*200,4,200);
        else rect(x*100-100,y*200-2,200,4);
    }
}

void mousePos(){
    x = 2*(mouseX/200);
    y = mouseY/200;
    mx = mouseX%200;
    my = mouseY%200;
    if(mx>my){
        if((200-mx)<my){x+=2;}
        else{x++;}
    }else if((200-mx)<my){x++;y++;}
}



void grid(){
    int i,j;
    for(i=0;i<3;i++){
        j=i+1;
        line(0,i*200,600,i*200);
        line(i*200,0,i*200,600);
        line(0,j*200,j*200,0); 
        line(600-(j*200),0,600,j*200);
    }
    for(i=1;i<3;i++){
       line(i*200,600,600,i*200);
       line(0,600-(i*200),i*200,600);
    }
}
