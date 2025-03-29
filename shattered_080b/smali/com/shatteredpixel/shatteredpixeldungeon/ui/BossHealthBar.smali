.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;
.super Lcom/watabou/noosa/ui/Component;
.source "BossHealthBar.java"


# static fields
.field public static bleeding:Z

.field public static boss:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

.field public static instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;


# instance fields
.field public bar:Lcom/watabou/noosa/Image;

.field public blood:Lcom/watabou/noosa/particles/Emitter;

.field public hp:Lcom/watabou/noosa/Image;

.field public rawShielding:Lcom/watabou/noosa/Image;

.field public shieldedHP:Lcom/watabou/noosa/Image;

.field public skull:Lcom/watabou/noosa/Image;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->boss:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 3
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;

    return-void
.end method

.method public static assignBoss(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V
    .locals 1

    .line 1
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->boss:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    const/4 p0, 0x0

    .line 2
    sput-boolean p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->bleeding:Z

    .line 3
    sget-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    :cond_0
    return-void
.end method

.method public static isAssigned()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->boss:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->boss:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public createChildren()V
    .locals 13

    .line 1
    new-instance v6, Lcom/watabou/noosa/Image;

    const-string v1, "boss_hp.png"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x40

    const/16 v5, 0x10

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    iput-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->bar:Lcom/watabou/noosa/Image;

    .line 2
    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->bar:Lcom/watabou/noosa/Image;

    iget v1, v0, Lcom/watabou/noosa/Visual;->width:F

    iput v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 4
    iget v0, v0, Lcom/watabou/noosa/Visual;->height:F

    iput v0, p0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 5
    new-instance v0, Lcom/watabou/noosa/Image;

    const-string v2, "boss_hp.png"

    const/16 v3, 0xf

    const/16 v4, 0x19

    const/16 v5, 0x2f

    const/4 v6, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->rawShielding:Lcom/watabou/noosa/Image;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 6
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->rawShielding:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    new-instance v0, Lcom/watabou/noosa/Image;

    const-string v2, "boss_hp.png"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->shieldedHP:Lcom/watabou/noosa/Image;

    .line 9
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 10
    new-instance v0, Lcom/watabou/noosa/Image;

    const-string v8, "boss_hp.png"

    const/16 v9, 0xf

    const/16 v10, 0x13

    const/16 v11, 0x2f

    const/4 v12, 0x4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->hp:Lcom/watabou/noosa/Image;

    .line 11
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 12
    new-instance v0, Lcom/watabou/noosa/Image;

    const-string v2, "boss_hp.png"

    const/4 v3, 0x5

    const/16 v4, 0x12

    const/4 v5, 0x6

    const/4 v6, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->skull:Lcom/watabou/noosa/Image;

    .line 13
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 14
    new-instance v0, Lcom/watabou/noosa/particles/Emitter;

    invoke-direct {v0}, Lcom/watabou/noosa/particles/Emitter;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->blood:Lcom/watabou/noosa/particles/Emitter;

    .line 15
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->skull:Lcom/watabou/noosa/Image;

    .line 16
    iput-object v1, v0, Lcom/watabou/noosa/particles/Emitter;->target:Lcom/watabou/noosa/Visual;

    .line 17
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/BloodParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 19
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->blood:Lcom/watabou/noosa/particles/Emitter;

    iput-boolean v3, v0, Lcom/watabou/noosa/particles/Emitter;->autoKill:Z

    .line 20
    iput-boolean v3, v0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    .line 21
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public layout()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->bar:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 2
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 3
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->hp:Lcom/watabou/noosa/Image;

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->shieldedHP:Lcom/watabou/noosa/Image;

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->rawShielding:Lcom/watabou/noosa/Image;

    const/high16 v6, 0x41700000    # 15.0f

    add-float/2addr v1, v6

    iput v1, v5, Lcom/watabou/noosa/Visual;->x:F

    iput v1, v4, Lcom/watabou/noosa/Visual;->x:F

    iput v1, v3, Lcom/watabou/noosa/Visual;->x:F

    const/high16 v1, 0x40c00000    # 6.0f

    add-float/2addr v2, v1

    .line 4
    iput v2, v5, Lcom/watabou/noosa/Visual;->y:F

    iput v2, v4, Lcom/watabou/noosa/Visual;->y:F

    iput v2, v3, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->skull:Lcom/watabou/noosa/Image;

    iget v2, v0, Lcom/watabou/noosa/Visual;->x:F

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v2, v3

    iput v2, v1, Lcom/watabou/noosa/Visual;->x:F

    .line 6
    iget v0, v0, Lcom/watabou/noosa/Visual;->y:F

    add-float/2addr v0, v3

    iput v0, v1, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method

.method public update()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->boss:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->boss:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->boss:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    int-to-float v1, v1

    .line 5
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->shielding()I

    move-result v0

    int-to-float v0, v0

    .line 6
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->boss:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float v2, v2

    .line 7
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->hp:Lcom/watabou/noosa/Image;

    iget-object v3, v3, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/4 v4, 0x0

    sub-float v5, v1, v0

    div-float/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v3, Lcom/watabou/utils/PointF;->x:F

    .line 8
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->shieldedHP:Lcom/watabou/noosa/Image;

    iget-object v3, v3, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    div-float/2addr v1, v2

    iput v1, v3, Lcom/watabou/utils/PointF;->x:F

    .line 9
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->rawShielding:Lcom/watabou/noosa/Image;

    iget-object v1, v1, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    div-float/2addr v0, v2

    iput v0, v1, Lcom/watabou/utils/PointF;->x:F

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->hp:Lcom/watabou/noosa/Image;

    iget-object v0, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    const/high16 v1, 0x3e800000    # 0.25f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->bleeding:Z

    .line 12
    :cond_1
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->bleeding:Z

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->blood:Lcom/watabou/noosa/particles/Emitter;

    iget-boolean v1, v1, Lcom/watabou/noosa/particles/Emitter;->on:Z

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->skull:Lcom/watabou/noosa/Image;

    const/high16 v1, 0xcc0000

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/Visual;->tint(IF)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->skull:Lcom/watabou/noosa/Image;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->resetColor()V

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->blood:Lcom/watabou/noosa/particles/Emitter;

    sget-boolean v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->bleeding:Z

    iput-boolean v1, v0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->boss:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->active:Z

    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    :cond_4
    :goto_2
    return-void
.end method
