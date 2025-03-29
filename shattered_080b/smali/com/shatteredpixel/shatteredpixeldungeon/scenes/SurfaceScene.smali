.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene;
.super Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;
.source "SurfaceScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;,
        Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Pet;,
        Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Avatar;,
        Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Cloud;,
        Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Sky;
    }
.end annotation


# instance fields
.field public viewport:Lcom/watabou/noosa/Camera;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;-><init>()V

    return-void
.end method


# virtual methods
.method public create()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth;

    invoke-super/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->create()V

    .line 2
    sget-object v3, Lcom/watabou/noosa/audio/Music;->INSTANCE:Lcom/watabou/noosa/audio/Music;

    const/4 v4, 0x1

    const-string v5, "surface.ogg"

    invoke-virtual {v3, v5, v4}, Lcom/watabou/noosa/audio/Music;->play(Ljava/lang/String;Z)V

    .line 3
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 4
    sget-object v3, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v6, v3, Lcom/watabou/noosa/Camera;->width:I

    .line 5
    iget v3, v3, Lcom/watabou/noosa/Camera;->height:I

    .line 6
    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;-><init>()V

    .line 7
    iput-boolean v4, v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->reversed:Z

    int-to-float v8, v6

    int-to-float v9, v3

    .line 8
    invoke-virtual {v7, v8, v9}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 9
    invoke-virtual {v0, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    add-int/lit8 v6, v6, -0x50

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 10
    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(F)F

    move-result v6

    add-int/lit8 v3, v3, -0x70

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    div-float/2addr v3, v7

    .line 11
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(F)F

    move-result v3

    .line 12
    sget-object v8, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    invoke-virtual {v8, v6, v3}, Lcom/watabou/noosa/Camera;->cameraToScreen(FF)Lcom/watabou/utils/Point;

    move-result-object v8

    .line 13
    new-instance v15, Lcom/watabou/noosa/Camera;

    iget v10, v8, Lcom/watabou/utils/Point;->x:I

    iget v11, v8, Lcom/watabou/utils/Point;->y:I

    sget v8, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->defaultZoom:I

    int-to-float v14, v8

    const/16 v12, 0x50

    const/16 v13, 0x70

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/watabou/noosa/Camera;-><init>(IIIIF)V

    iput-object v15, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene;->viewport:Lcom/watabou/noosa/Camera;

    .line 14
    invoke-static {v15}, Lcom/watabou/noosa/Camera;->add(Lcom/watabou/noosa/Camera;)Lcom/watabou/noosa/Camera;

    .line 15
    new-instance v8, Lcom/watabou/noosa/Group;

    invoke-direct {v8}, Lcom/watabou/noosa/Group;-><init>()V

    .line 16
    iget-object v9, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene;->viewport:Lcom/watabou/noosa/Camera;

    iput-object v9, v8, Lcom/watabou/noosa/Gizmo;->camera:Lcom/watabou/noosa/Camera;

    .line 17
    invoke-virtual {v0, v8}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/16 v10, 0xb

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/4 v10, 0x7

    if-lt v9, v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 19
    :goto_0
    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Sky;

    invoke-direct {v9, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Sky;-><init>(Z)V

    .line 20
    iget-object v10, v9, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v11, 0x42a00000    # 80.0f

    .line 21
    iput v11, v10, Lcom/watabou/utils/PointF;->x:F

    const/high16 v12, 0x42e00000    # 112.0f

    .line 22
    iput v12, v10, Lcom/watabou/utils/PointF;->y:F

    .line 23
    invoke-virtual {v8, v9}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v10, 0x3f800000    # 1.0f

    if-nez v4, :cond_1

    const/4 v13, 0x0

    :goto_1
    const/16 v14, 0x64

    if-ge v13, v14, :cond_1

    .line 24
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v14

    .line 25
    new-instance v15, Lcom/watabou/noosa/ColorBlock;

    const/4 v5, -0x1

    invoke-direct {v15, v14, v14, v5}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    .line 26
    invoke-static {v11}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v5

    div-float v16, v14, v7

    sub-float v5, v5, v16

    iput v5, v15, Lcom/watabou/noosa/Visual;->x:F

    .line 27
    invoke-static {v12}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v5

    sub-float v5, v5, v16

    iput v5, v15, Lcom/watabou/noosa/Visual;->y:F

    div-float/2addr v5, v12

    sub-float v5, v10, v5

    mul-float v5, v5, v14

    .line 28
    iput v5, v15, Lcom/watabou/noosa/Visual;->am:F

    .line 29
    invoke-virtual {v8, v15}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_2
    const/4 v13, 0x5

    if-ge v5, v13, :cond_2

    .line 30
    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Cloud;

    rsub-int/lit8 v14, v5, 0x4

    int-to-float v14, v14

    const v15, 0x416ccccd    # 14.8f

    mul-float v14, v14, v15

    invoke-static {v15}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v15

    add-float/2addr v15, v14

    invoke-direct {v13, v15, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Cloud;-><init>(FZ)V

    .line 31
    invoke-virtual {v8, v13}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {v9}, Lcom/watabou/noosa/Visual;->width()F

    move-result v5

    const/high16 v13, 0x41800000    # 16.0f

    div-float/2addr v5, v13

    add-float/2addr v5, v10

    float-to-int v5, v5

    const/4 v14, 0x0

    :goto_3
    mul-int/lit8 v15, v5, 0x4

    const/high16 v16, 0x3f400000    # 0.75f

    const/high16 v17, 0x40800000    # 4.0f

    if-ge v14, v15, :cond_4

    .line 33
    new-instance v15, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;

    int-to-float v10, v14

    sub-float v10, v10, v16

    mul-float v10, v10, v13

    div-float v10, v10, v17

    const/high16 v13, 0x42e20000    # 113.0f

    invoke-direct {v15, v10, v13, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;-><init>(FFZ)V

    if-eqz v4, :cond_3

    const v10, 0x3f333333    # 0.7f

    goto :goto_4

    :cond_3
    const v10, 0x3ecccccd    # 0.4f

    .line 34
    :goto_4
    invoke-virtual {v15, v10}, Lcom/watabou/noosa/Visual;->brightness(F)V

    .line 35
    invoke-virtual {v8, v15}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    add-int/lit8 v14, v14, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v13, 0x41800000    # 16.0f

    goto :goto_3

    .line 36
    :cond_4
    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Avatar;

    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v13, v13, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-direct {v10, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Avatar;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;)V

    .line 37
    iput v7, v10, Lcom/watabou/noosa/Visual;->am:F

    const/high16 v13, -0x40800000    # -1.0f

    iput v13, v10, Lcom/watabou/noosa/Visual;->aa:F

    .line 38
    iget v13, v10, Lcom/watabou/noosa/Visual;->width:F

    sub-float/2addr v11, v13

    div-float/2addr v11, v7

    iput v11, v10, Lcom/watabou/noosa/Visual;->x:F

    .line 39
    iget v11, v10, Lcom/watabou/noosa/Visual;->height:F

    sub-float v11, v12, v11

    iput v11, v10, Lcom/watabou/noosa/Visual;->y:F

    .line 40
    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 41
    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Pet;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Pet;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$1;)V

    const v14, 0x3f99999a    # 1.2f

    .line 42
    iput v14, v11, Lcom/watabou/noosa/Visual;->bm:F

    iput v14, v11, Lcom/watabou/noosa/Visual;->gm:F

    iput v14, v11, Lcom/watabou/noosa/Visual;->rm:F

    const/high16 v15, 0x42280000    # 42.0f

    .line 43
    iput v15, v11, Lcom/watabou/noosa/Visual;->x:F

    .line 44
    iget v15, v11, Lcom/watabou/noosa/Visual;->height:F

    sub-float v15, v12, v15

    iput v15, v11, Lcom/watabou/noosa/Visual;->y:F

    .line 45
    invoke-static {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 46
    sget-object v15, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v15, v15, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const-class v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    invoke-virtual {v15, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v13

    check-cast v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    if-eqz v13, :cond_6

    .line 47
    iget v15, v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    .line 48
    div-int/lit8 v15, v15, 0x2

    .line 49
    iget-object v14, v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-eqz v14, :cond_5

    .line 50
    invoke-virtual {v14}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v14

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v15, v14

    .line 51
    :cond_5
    iget-object v13, v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v13, :cond_7

    .line 52
    invoke-virtual {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->level()I

    move-result v13

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v15, v13

    goto :goto_5

    :cond_6
    const/4 v15, 0x0

    .line 53
    :cond_7
    :goto_5
    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v13, v13, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {v13, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v13

    if-nez v13, :cond_8

    const/4 v13, 0x0

    goto :goto_6

    :cond_8
    sget-object v13, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v13, v13, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {v13, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v13

    check-cast v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfLivingEarth;

    invoke-virtual {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result v13

    .line 54
    :goto_6
    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v14, v14, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {v14, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v14

    if-nez v14, :cond_9

    const/4 v14, 0x0

    goto :goto_7

    :cond_9
    sget-object v14, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v14, v14, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    invoke-virtual {v14, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v14

    check-cast v14, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding;

    invoke-virtual {v14}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->level()I

    move-result v14

    .line 55
    :goto_7
    sget-object v12, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v12, v12, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const-class v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    invoke-virtual {v12, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v7

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;

    if-eqz v7, :cond_b

    .line 56
    invoke-virtual {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wandClass()Ljava/lang/Class;

    move-result-object v12

    if-ne v12, v2, :cond_a

    .line 57
    invoke-virtual {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_8

    .line 58
    :cond_a
    invoke-virtual {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MagesStaff;->wandClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v1, :cond_b

    .line 59
    invoke-virtual {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->level()I

    move-result v1

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_b
    :goto_8
    const/4 v1, 0x3

    if-lt v15, v1, :cond_c

    if-lt v15, v13, :cond_c

    if-lt v15, v14, :cond_c

    .line 60
    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GhostSprite;

    invoke-direct {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GhostSprite;-><init>()V

    if-eqz v4, :cond_f

    const v1, 0x3ecccccd    # 0.4f

    .line 61
    invoke-virtual {v13, v1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    goto :goto_9

    :cond_c
    if-lt v13, v1, :cond_d

    if-lt v13, v14, :cond_d

    .line 62
    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EarthGuardianSprite;

    invoke-direct {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EarthGuardianSprite;-><init>()V

    goto :goto_9

    :cond_d
    if-lt v14, v1, :cond_e

    .line 63
    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;

    invoke-direct {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;-><init>()V

    add-int/lit8 v14, v14, 0x2

    const/4 v1, 0x6

    .line 64
    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->updateTier(I)V

    goto :goto_9

    :cond_e
    const/4 v13, 0x0

    :cond_f
    :goto_9
    if-eqz v13, :cond_10

    .line 65
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;->PARALYSED:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;

    invoke-virtual {v13, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->add(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$State;)V

    .line 66
    new-instance v1, Lcom/watabou/utils/PointF;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2, v2}, Lcom/watabou/utils/PointF;-><init>(FF)V

    iput-object v1, v13, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    .line 67
    iget v1, v10, Lcom/watabou/noosa/Visual;->x:F

    invoke-virtual {v13}, Lcom/watabou/noosa/Visual;->width()F

    move-result v2

    mul-float v2, v2, v16

    sub-float/2addr v1, v2

    iput v1, v13, Lcom/watabou/noosa/Visual;->x:F

    .line 68
    invoke-virtual {v13}, Lcom/watabou/noosa/Visual;->height()F

    move-result v1

    const/high16 v2, 0x42e00000    # 112.0f

    sub-float v12, v2, v1

    iput v12, v13, Lcom/watabou/noosa/Visual;->y:F

    .line 69
    invoke-static {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 70
    invoke-virtual {v8, v13}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 71
    :cond_10
    invoke-virtual {v8, v10}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 72
    invoke-virtual {v8, v11}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 73
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$1;

    invoke-direct {v1, v0, v9, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene;Lcom/watabou/noosa/Visual;Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Pet;)V

    invoke-virtual {v8, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v5, :cond_12

    .line 74
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;

    int-to-float v7, v1

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v7, v9

    const/high16 v9, 0x41800000    # 16.0f

    mul-float v7, v7, v9

    const/high16 v12, 0x42e00000    # 112.0f

    invoke-direct {v2, v7, v12, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$GrassPatch;-><init>(FFZ)V

    if-eqz v4, :cond_11

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_11
    const v7, 0x3f4ccccd    # 0.8f

    .line 75
    :goto_b
    invoke-virtual {v2, v7}, Lcom/watabou/noosa/Visual;->brightness(F)V

    .line 76
    invoke-virtual {v8, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 77
    :cond_12
    new-instance v1, Lcom/watabou/noosa/Image;

    .line 78
    invoke-direct {v1}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v2, "surface.png"

    .line 79
    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    const/16 v2, 0x58

    const/16 v5, 0x7d

    const/4 v7, 0x0

    .line 80
    invoke-virtual {v1, v7, v7, v2, v5}, Lcom/watabou/noosa/Image;->frame(IIII)V

    sub-float v6, v6, v17

    .line 81
    iput v6, v1, Lcom/watabou/noosa/Visual;->x:F

    const/high16 v2, 0x41100000    # 9.0f

    sub-float/2addr v3, v2

    .line 82
    iput v3, v1, Lcom/watabou/noosa/Visual;->y:F

    .line 83
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    if-eqz v4, :cond_13

    const v2, 0x3f99999a    # 1.2f

    .line 84
    invoke-virtual {v10, v2}, Lcom/watabou/noosa/Visual;->brightness(F)V

    .line 85
    invoke-virtual {v11, v2}, Lcom/watabou/noosa/Visual;->brightness(F)V

    goto :goto_c

    :cond_13
    const v2, 0xddeeff

    .line 86
    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 87
    :goto_c
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$2;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 88
    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene;

    const-string v5, "exit"

    invoke-static {v4, v5, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-direct {v2, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene;Ljava/lang/String;)V

    const/high16 v3, 0x42900000    # 72.0f

    const/high16 v4, 0x41a00000    # 20.0f

    .line 90
    invoke-virtual {v2, v3, v4}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 91
    iget v3, v1, Lcom/watabou/noosa/Visual;->x:F

    const/high16 v4, 0x41000000    # 8.0f

    add-float/2addr v3, v4

    iget v4, v1, Lcom/watabou/noosa/Visual;->y:F

    iget v1, v1, Lcom/watabou/noosa/Visual;->height:F

    add-float/2addr v4, v1

    add-float v4, v4, v17

    invoke-virtual {v2, v3, v4}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 92
    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 93
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->validateHappyEnd()V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->fadeIn()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveGlobal()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene;->viewport:Lcom/watabou/noosa/Camera;

    invoke-static {v0}, Lcom/watabou/noosa/Camera;->remove(Lcom/watabou/noosa/Camera;)Lcom/watabou/noosa/Camera;

    .line 3
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->destroy()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method
