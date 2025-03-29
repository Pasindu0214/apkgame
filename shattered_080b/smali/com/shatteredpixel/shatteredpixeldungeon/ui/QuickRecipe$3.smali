.class public final Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$3;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;
.source "QuickRecipe.java"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;-><init>(I)V

    .line 2
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "name"

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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
