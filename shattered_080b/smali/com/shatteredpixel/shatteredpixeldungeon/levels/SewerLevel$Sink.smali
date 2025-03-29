.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$Sink;
.super Lcom/watabou/noosa/particles/Emitter;
.source "SewerLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sink"
.end annotation


# static fields
.field public static final factory:Lcom/watabou/noosa/particles/Emitter$Factory;


# instance fields
.field public pos:I

.field public rippleDelay:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$Sink$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$Sink$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$Sink;->factory:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/Emitter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$Sink;->rippleDelay:F

    .line 3
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$Sink;->pos:I

    .line 4
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    .line 5
    iget v1, p1, Lcom/watabou/utils/PointF;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v1, v2

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    const/high16 v2, 0x40400000    # 3.0f

    add-float/2addr p1, v2

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/watabou/noosa/particles/Emitter;->pos(FFFF)V

    .line 6
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$Sink;->factory:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v0, 0x0

    const v1, 0x3dcccccd    # 0.1f

    .line 7
    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$Sink;->pos:I

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

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$Sink;->rippleDelay:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$Sink;->rippleDelay:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$Sink;->pos:I

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 5
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    add-int/2addr v0, v1

    .line 6
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->ripple(I)Lcom/shatteredpixel/shatteredpixeldungeon/effects/Ripple;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget v1, v0, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v2, 0x41000000    # 8.0f

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    const v0, 0x3ecccccd    # 0.4f

    const v1, 0x3f19999a    # 0.6f

    .line 8
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/SewerLevel$Sink;->rippleDelay:F

    :cond_1
    return-void
.end method
