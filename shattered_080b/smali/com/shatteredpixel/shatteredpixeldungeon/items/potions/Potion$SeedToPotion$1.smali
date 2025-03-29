.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;
.source "Potion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;->sampleOutput(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;-><init>(I)V

    .line 2
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "name"

    invoke-static {p1, v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public info()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
