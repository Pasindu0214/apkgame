.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfDisintegration;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;
.source "WandOfDisintegration.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WAND_DISINTEGRATION:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->collisionProperties:I

    return-void
.end method


# virtual methods
.method public fx(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->path:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->dist:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    .line 3
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$DeathRay;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->raisedTileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$DeathRay;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 5
    invoke-interface {p2}, Lcom/watabou/utils/Callback;->call()V

    return-void
.end method

.method public max(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public min(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public onHit(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 0

    return-void
.end method

.method public onZap(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result v1

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x4

    .line 3
    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->dist:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->blobs:Ljava/util/HashMap;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Web;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    const/4 v5, 0x1

    .line 6
    invoke-virtual {p1, v5, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->subPath(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 7
    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 8
    div-int/lit8 v11, v7, 0x3

    add-int/2addr v11, v6

    .line 9
    rem-int/lit8 v7, v7, 0x3

    .line 10
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v11

    .line 11
    :cond_0
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    aget-boolean v10, v10, v8

    if-eqz v10, :cond_1

    add-int/lit8 v7, v7, 0x1

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {v4, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->clear(I)V

    .line 13
    :cond_1
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v11, v10, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->flamable:[Z

    aget-boolean v11, v11, v8

    if-eqz v11, :cond_2

    .line 14
    invoke-virtual {v10, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->destroy(I)V

    .line 15
    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    const/4 v1, 0x1

    .line 16
    :cond_2
    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->center(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v8

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PurpleParticle;->BURST:Lcom/watabou/noosa/particles/Emitter$Factory;

    invoke-static {v5, v2}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v11

    .line 17
    invoke-virtual {v8, v10, v9, v11}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 18
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 19
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v5

    add-int/2addr p1, v0

    add-int/2addr p1, v6

    .line 20
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 21
    invoke-virtual {p0, v1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->processSoulMark(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    add-int/lit8 v3, p1, 0x2

    mul-int/lit8 v4, p1, 0x4

    add-int/lit8 v4, v4, 0x8

    .line 22
    invoke-static {v3, v4}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v3

    .line 23
    invoke-virtual {v1, v3, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 24
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v3

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/PurpleParticle;->BURST:Lcom/watabou/noosa/particles/Emitter$Factory;

    invoke-static {v5, v2}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v6

    .line 25
    invoke-virtual {v3, v4, v9, v6}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 26
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flash()V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public staffFx(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;)V
    .locals 4

    const v0, 0x220022

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    const v0, 0x3f19999a    # 0.6f

    .line 2
    iput v0, p1, Lcom/watabou/noosa/Visual;->am:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iput v0, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    .line 4
    iget-object v1, p1, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, -0x3ee00000    # -10.0f

    .line 5
    iput v2, v1, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iput v3, v1, Lcom/watabou/utils/PointF;->y:F

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x40400000    # 3.0f

    .line 7
    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->minSize:F

    .line 8
    iput v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->maxSize:F

    .line 9
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->shuffleXY(F)V

    return-void
.end method
