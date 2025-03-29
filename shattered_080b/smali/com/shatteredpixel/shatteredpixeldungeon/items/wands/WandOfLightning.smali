.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;
.source "WandOfLightning.java"


# instance fields
.field public affected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;",
            ">;"
        }
    .end annotation
.end field

.field public arcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WAND_LIGHTNING:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;->affected:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;->arcs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final arc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->not([Z[Z)[Z

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/watabou/utils/PathFinder;->buildDistanceMap(I[ZI)V

    const/4 v0, 0x0

    .line 4
    :goto_1
    sget-object v3, Lcom/watabou/utils/PathFinder;->distance:[I

    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 5
    aget v3, v3, v0

    const v4, 0x7fffffff

    if-ge v3, v4, :cond_2

    .line 6
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v3, v4, :cond_1

    sget-object v4, Lcom/watabou/utils/PathFinder;->distance:[I

    aget v4, v4, v0

    if-le v4, v1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    .line 8
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;->affected:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;->affected:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 12
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;->arcs:Ljava/util/ArrayList;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;

    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v4}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v4

    iget-object v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v5}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;->arc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public fx(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;->affected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;->arcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;->affected:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;->arcs:Ljava/util/ArrayList;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v2

    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v3}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;->arc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;->arcs:Ljava/util/ArrayList;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v3}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v3

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->raisedTileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->center(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v0, v2, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 11
    :goto_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object p1, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;->arcs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;-><init>(Ljava/util/List;Lcom/watabou/utils/Callback;)V

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 12
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "snd_lightning.mp3"

    .line 13
    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 14
    invoke-interface {p2}, Lcom/watabou/utils/Callback;->call()V

    return-void
.end method

.method public max(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public min(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x5

    return p1
.end method

.method public onHit(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Shocking;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Shocking;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/enchantments/Shocking;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    return-void
.end method

.method public onZap(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;->affected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f19999a    # 0.6f

    div-float/2addr v1, v0

    const v0, 0x3ecccccd    # 0.4f

    add-float/2addr v1, v0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->water:[Z

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;->affected:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->processSoulMark(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V

    .line 5
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/DamageWand;->damageRoll()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 6
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne v0, v2, :cond_1

    sget-object v2, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    const/high16 v3, 0x40000000    # 2.0f

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v3, v4}, Lcom/watabou/noosa/Camera;->shake(FF)V

    .line 7
    :cond_1
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 8
    invoke-virtual {v2, v3, v5, v4}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 9
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flash()V

    goto :goto_0

    .line 10
    :cond_2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLightning;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "ondeath"

    .line 12
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public staffFx(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;)V
    .locals 4

    const v0, 0xffffff

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    const v0, 0x3f19999a    # 0.6f

    .line 2
    iput v0, p1, Lcom/watabou/noosa/Visual;->am:F

    .line 3
    iput v0, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iput v0, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    .line 4
    iget-object v0, p1, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v2, 0x0

    .line 5
    iput v2, v0, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 7
    iget-object v0, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const v1, 0x40490fda

    invoke-static {v1}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v1

    neg-float v1, v1

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1, v3}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 8
    iput v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->minSize:F

    .line 9
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->maxSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 10
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->sizeJitter:F

    .line 11
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->shuffleXY(F)V

    .line 12
    invoke-static {v0}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v0

    .line 13
    iget v1, p1, Lcom/watabou/noosa/Visual;->x:F

    sub-float/2addr v1, v0

    iput v1, p1, Lcom/watabou/noosa/Visual;->x:F

    .line 14
    iget v1, p1, Lcom/watabou/noosa/Visual;->y:F

    add-float/2addr v1, v0

    iput v1, p1, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method
