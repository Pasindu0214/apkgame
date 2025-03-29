.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$3;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "Potion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;->doThrow(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

.field public final synthetic val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;


# direct methods
.method public varargs constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    iput-object p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$3;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-direct {p0, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 0

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$3;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->thrower:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->selectCell(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/CellSelector$Listener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
