.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window$1;
.super Lcom/watabou/noosa/PointerArea;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>(IIILcom/watabou/noosa/NinePatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;FFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/watabou/noosa/PointerArea;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/watabou/input/PointerEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;

    iget-object v1, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->chrome:Lcom/watabou/noosa/NinePatch;

    iget-object p1, p1, Lcom/watabou/input/PointerEvent;->current:Lcom/watabou/utils/PointF;

    iget v1, p1, Lcom/watabou/utils/PointF;->x:F

    float-to-int v1, v1

    iget p1, p1, Lcom/watabou/utils/PointF;->y:F

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/watabou/noosa/Visual;->overlapsScreenPoint(II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->onBackPressed()V

    :cond_0
    return-void
.end method
