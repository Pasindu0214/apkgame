.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Alchemize;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Spell;
.source "Alchemize.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$AlchemyProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Alchemize$Recipe;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Spell;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ALCHEMIZE:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public getEnergy()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCast(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->visibleEnemies()I

    move-result v0

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->mindVisionEnemies:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le v0, p1, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "enemy_near"

    .line 2
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickSlotButton;->refresh()V

    .line 5
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->provider:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$AlchemyProvider;

    .line 6
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    invoke-static {p1}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    return-void
.end method

.method public price()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public spendEnergy(I)V
    .locals 0

    return-void
.end method
