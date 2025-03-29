.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;
.source "WandOfWarding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;
    }
.end annotation


# instance fields
.field public wardAvailable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->collisionProperties:I

    .line 3
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WAND_WARDING:I

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding;->wardAvailable:Z

    return-void
.end method


# virtual methods
.method public fx(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xa

    .line 3
    invoke-static {v1, v3, v0, v2, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->boltFromChar(Lcom/watabou/noosa/Group;ILcom/watabou/noosa/Visual;ILcom/watabou/utils/Callback;)Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    move-result-object p2

    .line 4
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->dist:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 5
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->dist:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit8 p1, p1, 0x14

    int-to-float p1, p1

    .line 6
    iget-object v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->to:Lcom/watabou/utils/PointF;

    iget v1, p2, Lcom/watabou/noosa/particles/Emitter;->x:F

    iget v2, p2, Lcom/watabou/noosa/particles/Emitter;->y:F

    .line 7
    new-instance v3, Lcom/watabou/utils/PointF;

    iget v4, v0, Lcom/watabou/utils/PointF;->x:F

    sub-float/2addr v4, v1

    iget v0, v0, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr v0, v2

    invoke-direct {v3, v4, v0}, Lcom/watabou/utils/PointF;-><init>(FF)V

    .line 8
    new-instance v0, Lcom/watabou/utils/PointF;

    invoke-direct {v0, v3}, Lcom/watabou/utils/PointF;-><init>(Lcom/watabou/utils/PointF;)V

    invoke-virtual {v0}, Lcom/watabou/utils/PointF;->normalize()Lcom/watabou/utils/PointF;

    .line 9
    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    mul-float v1, v1, p1

    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 10
    iget v2, v0, Lcom/watabou/utils/PointF;->y:F

    mul-float v2, v2, p1

    iput v2, v0, Lcom/watabou/utils/PointF;->y:F

    .line 11
    iput v1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->sx:F

    .line 12
    iput v2, p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->sy:F

    .line 13
    invoke-virtual {v3}, Lcom/watabou/utils/PointF;->length()F

    move-result v0

    div-float/2addr v0, p1

    iput v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->time:F

    .line 14
    :cond_0
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 p2, 0x3f800000    # 1.0f

    const-string v0, "snd_zap.mp3"

    .line 15
    invoke-virtual {p1, v0, p2, p2, p2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public onHit(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->buffedLvl()I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p2, p2, 0x5

    .line 2
    invoke-static {p2}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p2

    const/4 p3, 0x4

    if-lt p2, p3, :cond_1

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 4
    instance-of p4, p3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    if-eqz p4, :cond_0

    .line 5
    move-object p4, p3

    check-cast p4, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->buffedLvl()I

    move-result v0

    invoke-static {p4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->access$000(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;I)V

    .line 6
    iget-object p4, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p4

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WardParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    check-cast p3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    iget p3, p3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p4, v0, v1, p3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onZap(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-boolean v1, v1, v2

    const-string v2, "bad_location"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget-object v5, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-boolean v1, v1, v5

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    instance-of v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    if-eqz v5, :cond_2

    .line 4
    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding;->wardAvailable:Z

    if-eqz p1, :cond_1

    .line 5
    move-object p1, v0

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->upgrade(I)V

    goto :goto_0

    .line 6
    :cond_1
    move-object p1, v0

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v2

    invoke-static {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->access$000(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;I)V

    .line 7
    :goto_0
    iget-object p1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WardParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    .line 8
    invoke-virtual {p1, v2, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    goto/16 :goto_4

    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    .line 9
    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 11
    invoke-virtual {v0, p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pressCell(IZ)V

    goto/16 :goto_4

    .line 12
    :cond_3
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 13
    sget-object v5, Lcom/watabou/utils/PathFinder;->CIRCLE8:[I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_5

    aget v8, v5, v7

    add-int/2addr v8, v0

    .line 14
    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v8

    instance-of v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    if-eqz v8, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_6

    .line 15
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;-><init>()V

    .line 16
    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 17
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->buffedLvl()I

    move-result v2

    .line 18
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->wandLevel:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;F)V

    .line 20
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 21
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v2

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WardParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    .line 22
    invoke-virtual {v2, v4, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 23
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 24
    invoke-virtual {v0, p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pressCell(IZ)V

    goto :goto_4

    :cond_6
    new-array v0, v4, [Ljava/lang/Object;

    .line 25
    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 27
    invoke-virtual {v0, p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pressCell(IZ)V

    goto :goto_4

    :cond_7
    :goto_3
    new-array v0, v4, [Ljava/lang/Object;

    .line 28
    invoke-static {p0, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 30
    invoke-virtual {v0, p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->pressCell(IZ)V

    :goto_4
    return-void
.end method

.method public staffFx(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;)V
    .locals 3

    const v0, 0x8822ff

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    const v0, 0x3e99999a    # 0.3f

    .line 2
    iput v0, p1, Lcom/watabou/noosa/Visual;->am:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 3
    iput v1, p1, Lcom/watabou/noosa/particles/PixelParticle;->left:F

    iput v1, p1, Lcom/watabou/noosa/particles/PixelParticle;->lifespan:F

    .line 4
    iget-object v1, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    const v2, 0x40c90fda

    invoke-static {v2}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/watabou/utils/PointF;->polar(FF)Lcom/watabou/utils/PointF;

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x40000000    # 2.0f

    .line 5
    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->minSize:F

    .line 6
    iput v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->maxSize:F

    const/high16 v0, 0x40200000    # 2.5f

    .line 7
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff$StaffParticle;->radiateXY(F)V

    return-void
.end method

.method public statsDesc()Ljava/lang/String;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "stats_desc"

    if-eqz v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p0, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p0, v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryToZap(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 2
    instance-of v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    if-eqz v5, :cond_0

    .line 3
    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 5
    instance-of v7, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;

    if-eqz v7, :cond_2

    .line 6
    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;

    .line 7
    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$Charger;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    .line 8
    instance-of v7, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding;

    if-eqz v7, :cond_2

    .line 9
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result v5

    add-int/2addr v5, v6

    add-int/2addr v3, v5

    goto :goto_1

    :cond_3
    if-ge v2, v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    .line 10
    :goto_2
    iput-boolean v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding;->wardAvailable:Z

    .line 11
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    .line 12
    instance-of v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    const-string v5, "no_more_wards"

    if-eqz v4, :cond_5

    .line 13
    iget-boolean v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding;->wardAvailable:Z

    if-nez v2, :cond_6

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    if-gt v0, v6, :cond_6

    new-array p1, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {p0, v5, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x2

    if-le v2, v3, :cond_6

    new-array p1, v1, [Ljava/lang/Object;

    .line 15
    invoke-static {p0, v5, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 16
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->tryToZap(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)Z

    move-result p1

    return p1
.end method
