.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
.source "Amulet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet;->doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;-><init>()V

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Amulet;->showAmuletScene(Z)V

    const/4 v0, 0x0

    return v0
.end method
