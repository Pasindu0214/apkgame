.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndResurrect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->INSTANCE:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;->causeOfDeath:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings;->submit(ZLjava/lang/Class;)V

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;->causeOfDeath:Ljava/lang/Object;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->reallyDie(Ljava/lang/Object;)V

    return-void
.end method
