.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;
.source "LootIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/LootIndicator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;-><init>()V

    return-void
.end method


# virtual methods
.method public keyAction()Lcom/watabou/input/GameAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->TAG_LOOT:Lcom/watabou/input/GameAction;

    return-object v0
.end method

.method public onClick()V
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->handle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->next()V

    :cond_0
    return-void
.end method
