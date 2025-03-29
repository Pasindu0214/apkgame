.class public final Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy$1;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "NewCavesBossLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/particles/Emitter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Lcom/watabou/noosa/particles/Emitter;IFF)V
    .locals 4

    .line 1
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy;->energySourceSprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-nez p2, :cond_3

    .line 2
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 3
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Pylon;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->NEUTRAL:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-eq v1, v2, :cond_1

    .line 4
    iget-object p2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 5
    sput-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy;->energySourceSprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    goto :goto_1

    .line 6
    :cond_1
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/OldDM300;

    if-eqz v1, :cond_0

    .line 7
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 8
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy;->energySourceSprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy;->energySourceSprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-nez p2, :cond_3

    return-void

    .line 10
    :cond_3
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;

    .line 11
    invoke-virtual {p1, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;->resetStatic(FF)V

    .line 12
    iget-object p2, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    .line 13
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/NewCavesBossLevel$PylonEnergy;->energySourceSprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 14
    iget v1, v0, Lcom/watabou/noosa/Visual;->x:F

    iget v2, v0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    sub-float/2addr v2, p3

    .line 15
    iget p3, v0, Lcom/watabou/noosa/Visual;->y:F

    iget v0, v0, Lcom/watabou/noosa/Visual;->height:F

    div-float/2addr v0, v3

    add-float/2addr v0, p3

    sub-float/2addr v0, p4

    .line 16
    iput v2, p2, Lcom/watabou/utils/PointF;->x:F

    .line 17
    iput v0, p2, Lcom/watabou/utils/PointF;->y:F

    .line 18
    invoke-virtual {p2}, Lcom/watabou/utils/PointF;->normalize()Lcom/watabou/utils/PointF;

    const/high16 p3, 0x41800000    # 16.0f

    invoke-virtual {p2, p3}, Lcom/watabou/utils/PointF;->scale(F)Lcom/watabou/utils/PointF;

    .line 19
    iget-object p2, p1, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    iget-object p1, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    invoke-virtual {p2, p1}, Lcom/watabou/utils/PointF;->set(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    return-void
.end method

.method public lightMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
