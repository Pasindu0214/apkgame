.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;
.source "Belongings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;-><init>()V

    .line 2
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "name"

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    const/16 p1, 0x14

    .line 3
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;->size:I

    return-void
.end method
