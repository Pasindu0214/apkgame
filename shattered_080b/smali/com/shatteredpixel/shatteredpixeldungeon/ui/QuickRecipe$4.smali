.class public final Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$4;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;
.source "QuickRecipe.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cooked"

    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public info()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
