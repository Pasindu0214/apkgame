.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;
.source "MissileSprite.java"

# interfaces
.implements Lcom/watabou/noosa/tweeners/Tweener$Listener;


# static fields
.field public static final ANGULAR_SPEEDS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callback:Lcom/watabou/utils/Callback;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->ANGULAR_SPEEDS:Ljava/util/HashMap;

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->ANGULAR_SPEEDS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/ThrowingKnife;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->ANGULAR_SPEEDS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/FishingSpear;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->ANGULAR_SPEEDS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/ThrowingSpear;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->ANGULAR_SPEEDS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Kunai;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->ANGULAR_SPEEDS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Javelin;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->ANGULAR_SPEEDS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Trident;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->ANGULAR_SPEEDS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->ANGULAR_SPEEDS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ScorpioSprite$ScorpioShot;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->ANGULAR_SPEEDS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/HeavyBoomerang;

    const/16 v2, 0x5a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->ANGULAR_SPEEDS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Bolas;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->ANGULAR_SPEEDS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Shuriken;

    const/16 v2, 0x870

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->ANGULAR_SPEEDS:Ljava/util/HashMap;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/TenguSprite$TenguShuriken;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/watabou/noosa/tweeners/Tweener;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->kill()V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->callback:Lcom/watabou/utils/Callback;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/watabou/utils/Callback;->call()V

    :cond_0
    return-void
.end method

.method public reset(IILcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/watabou/utils/Callback;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->reset(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/watabou/utils/Callback;)V

    return-void
.end method

.method public reset(Lcom/watabou/noosa/Visual;ILcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/watabou/utils/Callback;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p0}, Lcom/watabou/noosa/Visual;->center(Lcom/watabou/noosa/Visual;)Lcom/watabou/utils/PointF;

    move-result-object p1

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->reset(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/watabou/utils/Callback;)V

    return-void
.end method

.method public reset(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;Lcom/watabou/utils/Callback;)V
    .locals 7

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->revive()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->originToCenter()V

    .line 7
    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->callback:Lcom/watabou/utils/Callback;

    .line 8
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 9
    invoke-static {p2, p1}, Lcom/watabou/utils/PointF;->diff(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    move-result-object p1

    .line 10
    iget-object p4, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    invoke-virtual {p4, p1}, Lcom/watabou/utils/PointF;->set(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    invoke-virtual {p4}, Lcom/watabou/utils/PointF;->normalize()Lcom/watabou/utils/PointF;

    const/high16 v1, 0x43700000    # 240.0f

    invoke-virtual {p4, v1}, Lcom/watabou/utils/PointF;->scale(F)Lcom/watabou/utils/PointF;

    const/high16 p4, 0x44340000    # 720.0f

    .line 11
    iput p4, p0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 12
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->ANGULAR_SPEEDS:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 13
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 14
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MissileSprite;->ANGULAR_SPEEDS:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    :cond_2
    const/high16 v2, 0x43070000    # 135.0f

    .line 15
    iget v3, p1, Lcom/watabou/utils/PointF;->x:F

    float-to-double v3, v3

    iget v5, p1, Lcom/watabou/utils/PointF;->y:F

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v5, 0x400921fb4d12d84aL    # 3.1415926

    div-double/2addr v3, v5

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double v3, v3, v5

    double-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/watabou/noosa/Visual;->angle:F

    .line 16
    iget v3, p1, Lcom/watabou/utils/PointF;->x:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    .line 17
    iput-boolean v0, p0, Lcom/watabou/noosa/Image;->flipHorizontal:Z

    .line 18
    invoke-virtual {p0}, Lcom/watabou/noosa/Image;->updateFrame()V

    goto :goto_1

    .line 19
    :cond_3
    iget v0, p0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    neg-float v0, v0

    iput v0, p0, Lcom/watabou/noosa/Visual;->angularSpeed:F

    const/high16 v0, 0x42b40000    # 90.0f

    add-float/2addr v2, v0

    .line 20
    iput v2, p0, Lcom/watabou/noosa/Visual;->angle:F

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/watabou/noosa/Image;->flipHorizontal:Z

    .line 22
    invoke-virtual {p0}, Lcom/watabou/noosa/Image;->updateFrame()V

    .line 23
    :goto_1
    instance-of v0, p3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/Crossbow;

    if-eqz v0, :cond_4

    const/high16 v1, 0x44340000    # 720.0f

    goto :goto_2

    .line 24
    :cond_4
    instance-of p4, p3, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/SpiritBow$SpiritArrow;

    if-nez p4, :cond_5

    instance-of p4, p3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ScorpioSprite$ScorpioShot;

    if-nez p4, :cond_5

    instance-of p3, p3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/TenguSprite$TenguShuriken;

    if-eqz p3, :cond_6

    :cond_5
    const/high16 v1, 0x43b40000    # 360.0f

    .line 25
    :cond_6
    :goto_2
    new-instance p3, Lcom/watabou/noosa/tweeners/PosTweener;

    invoke-virtual {p1}, Lcom/watabou/utils/PointF;->length()F

    move-result p1

    div-float/2addr p1, v1

    invoke-direct {p3, p0, p2, p1}, Lcom/watabou/noosa/tweeners/PosTweener;-><init>(Lcom/watabou/noosa/Visual;Lcom/watabou/utils/PointF;F)V

    .line 26
    iput-object p0, p3, Lcom/watabou/noosa/tweeners/Tweener;->listener:Lcom/watabou/noosa/tweeners/Tweener$Listener;

    .line 27
    iget-object p1, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {p1, p3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method
