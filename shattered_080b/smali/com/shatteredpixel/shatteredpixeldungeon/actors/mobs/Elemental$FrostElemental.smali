.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental$FrostElemental;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;
.source "Elemental.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrostElemental"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite$Frost;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfFrost;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/PotionOfFrost;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->loot:Ljava/lang/Object;

    const/high16 v0, 0x3e000000    # 0.125f

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->lootChance:F

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->ICY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Elemental;->harmfulBuffs:Ljava/util/ArrayList;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public meleeProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 1

    const/4 p2, 0x3

    .line 1
    invoke-static {p2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean p2, p2, v0

    if-eqz p2, :cond_1

    .line 2
    :cond_0
    iget p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Freezing;->freeze(I)V

    .line 3
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object p1

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->blood()I

    move-result p2

    const/4 v0, 0x5

    invoke-static {p1, p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(Lcom/watabou/utils/PointF;II)V

    :cond_1
    return-void
.end method

.method public rangedProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Freezing;->freeze(I)V

    .line 2
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object p1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->blood()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(Lcom/watabou/utils/PointF;II)V

    return-void
.end method
