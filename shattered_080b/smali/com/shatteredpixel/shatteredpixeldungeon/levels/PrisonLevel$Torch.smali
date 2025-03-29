.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel$Torch;
.super Lcom/watabou/noosa/particles/Emitter;
.source "PrisonLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Torch"
.end annotation


# instance fields
.field public pos:I


# direct methods
.method public constructor <init>(I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/Emitter;-><init>()V

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel$Torch;->pos:I

    .line 3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    .line 4
    iget v0, p1, Lcom/watabou/utils/PointF;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    iget v2, p1, Lcom/watabou/utils/PointF;->y:F

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v2, v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/watabou/noosa/particles/Emitter;->pos(FFFF)V

    .line 5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/FlameParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v2, 0x0

    const v3, 0x3e19999a    # 0.15f

    .line 6
    invoke-virtual {p0, v0, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 7
    new-instance v0, Lcom/watabou/noosa/Halo;

    const/high16 v2, 0x41400000    # 12.0f

    const v3, 0xffffcc

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v2, v3, v4}, Lcom/watabou/noosa/Halo;-><init>(FIF)V

    iget v2, p1, Lcom/watabou/utils/PointF;->x:F

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    add-float/2addr p1, v1

    invoke-virtual {v0, v2, p1}, Lcom/watabou/noosa/Halo;->point(FF)Lcom/watabou/noosa/Halo;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/PrisonLevel$Torch;->pos:I

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-super {p0}, Lcom/watabou/noosa/particles/Emitter;->update()V

    :cond_1
    return-void
.end method
