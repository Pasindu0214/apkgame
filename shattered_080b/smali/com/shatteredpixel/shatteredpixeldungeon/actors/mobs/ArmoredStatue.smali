.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredStatue;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;
.source "ArmoredStatue.java"


# instance fields
.field public armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/StatueSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    .line 3
    :cond_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator;->randomArmor()Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredStatue;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 4
    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->cursed:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 5
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;->random([Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->inscribe(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;)Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 6
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    return-void
.end method


# virtual methods
.method public defenseProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredStatue;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {v0, p1, p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p1

    return p1
.end method

.method public defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredStatue;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->evasionFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public description()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredStatue;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "desc"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public die(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredStatue;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->identify()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredStatue;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    .line 3
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->die(Ljava/lang/Object;)V

    return-void
.end method

.method public drRoll()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->drRoll()I

    move-result v0

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredStatue;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->DRMin()I

    move-result v1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredStatue;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->DRMax()I

    move-result v2

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "armor"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/watabou/utils/Bundle;->get()Lcom/watabou/utils/Bundlable;

    move-result-object p1

    .line 3
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredStatue;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    return-void
.end method

.method public speed()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredStatue;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->speed()F

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->speedFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;F)F

    move-result v0

    return v0
.end method

.method public sprite()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;
    .locals 14

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->sprite()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/StatueSprite;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredStatue;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->tier:I

    if-eqz v1, :cond_0

    .line 3
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/StatueSprite;->tierFrames:[I

    int-to-float v2, v2

    const/4 v4, 0x0

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v4, v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->gate(FFF)F

    move-result v2

    float-to-int v2, v2

    aget v2, v3, v2

    .line 4
    new-instance v3, Lcom/watabou/noosa/TextureFilm;

    iget-object v4, v1, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v5, 0xc

    const/16 v6, 0xf

    invoke-direct {v3, v4, v5, v6}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 5
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x2

    aput-object v7, v5, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x3

    aput-object v7, v5, v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x5

    aput-object v12, v5, v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v12, 0x6

    aput-object v6, v5, v12

    invoke-virtual {v4, v3, v5}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 6
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v5, v12, [Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    add-int/lit8 v6, v2, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    add-int/lit8 v6, v2, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    add-int/lit8 v6, v2, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    add-int/lit8 v6, v2, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    add-int/lit8 v6, v2, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-virtual {v4, v3, v5}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 7
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v5, v11, [Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    add-int/lit8 v6, v2, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    add-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v10

    invoke-virtual {v4, v3, v5}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 8
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v1, v2, v9}, Lcom/watabou/noosa/MovieClip;->play(Lcom/watabou/noosa/MovieClip$Animation;Z)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 9
    throw v0
.end method

.method public stealth()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredStatue;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->stealthFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;F)F

    move-result v0

    return v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Statue;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/ArmoredStatue;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    const-string v1, "armor"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundlable;)V

    return-void
.end method
