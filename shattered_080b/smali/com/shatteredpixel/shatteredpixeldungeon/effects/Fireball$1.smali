.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$1;
.super Lcom/watabou/noosa/particles/Emitter$Factory;
.source "Fireball.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;

    invoke-direct {p0}, Lcom/watabou/noosa/particles/Emitter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Lcom/watabou/noosa/particles/Emitter;IFF)V
    .locals 2

    .line 1
    const-class p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$Flame;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object p1

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$Flame;

    .line 2
    invoke-virtual {p1}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 3
    sget p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$Flame;->LIFESPAN:F

    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$Flame;->timeLeft:F

    .line 4
    iget-object p2, p1, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$Flame;->SPEED:F

    const/4 v1, 0x0

    .line 5
    iput v1, p2, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iput v0, p2, Lcom/watabou/utils/PointF;->y:F

    .line 7
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball;

    .line 8
    iget p2, p2, Lcom/watabou/noosa/ui/Component;->y:F

    const/high16 v0, 0x41f00000    # 30.0f

    sub-float/2addr p2, v0

    .line 9
    iput p2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Fireball$Flame;->heightLimit:F

    .line 10
    iget p2, p1, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    sub-float/2addr p3, p2

    iput p3, p1, Lcom/watabou/noosa/Visual;->x:F

    .line 11
    iget p2, p1, Lcom/watabou/noosa/Visual;->height:F

    div-float/2addr p2, v0

    sub-float/2addr p4, p2

    iput p4, p1, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method
