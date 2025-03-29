.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel$Smoke;
.super Lcom/watabou/noosa/particles/Emitter;
.source "CityLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Smoke"
.end annotation


# static fields
.field public static final factory:Lcom/watabou/noosa/particles/Emitter$Factory;


# instance fields
.field public pos:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel$Smoke$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel$Smoke$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel$Smoke;->factory:Lcom/watabou/noosa/particles/Emitter$Factory;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/Emitter;-><init>()V

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel$Smoke;->pos:I

    .line 3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    .line 4
    iget v0, p1, Lcom/watabou/utils/PointF;->x:F

    const/high16 v1, 0x40c00000    # 6.0f

    sub-float/2addr v0, v1

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    const/high16 v1, 0x40800000    # 4.0f

    sub-float/2addr p1, v1

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/watabou/noosa/particles/Emitter;->pos(FFFF)V

    .line 5
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel$Smoke;->factory:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v0, 0x0

    const v1, 0x3e4ccccd    # 0.2f

    .line 6
    invoke-virtual {p0, p1, v1, v0}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/CityLevel$Smoke;->pos:I

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
