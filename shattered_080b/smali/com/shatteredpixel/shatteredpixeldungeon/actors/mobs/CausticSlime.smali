.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/CausticSlime;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Slime;
.source "CausticSlime.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Slime;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CausticSlimeSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->ACIDIC:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 3
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;->left:F

    .line 4
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->burst(II)V

    .line 5
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p1

    return p1
.end method

.method public rollToDropLoot()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->maxLvl:I

    add-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->rollToDropLoot()V

    .line 3
    :cond_1
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v1

    aget v0, v0, v1

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v3, v0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    .line 5
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/GooBlob;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/quest/GooBlob;-><init>()V

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop(I)V

    return-void
.end method
