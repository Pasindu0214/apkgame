.class public Lcom/watabou/noosa/ui/Button$1;
.super Lcom/watabou/noosa/PointerArea;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/watabou/noosa/ui/Button;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/watabou/noosa/ui/Button;


# direct methods
.method public constructor <init>(Lcom/watabou/noosa/ui/Button;FFFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/watabou/noosa/ui/Button$1;->this$0:Lcom/watabou/noosa/ui/Button;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/watabou/noosa/PointerArea;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/watabou/input/PointerEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/watabou/noosa/ui/Button$1;->this$0:Lcom/watabou/noosa/ui/Button;

    iget-boolean v0, p1, Lcom/watabou/noosa/ui/Button;->processed:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/watabou/noosa/ui/Button;->onClick()V

    :cond_0
    return-void
.end method

.method public onPointerDown(Lcom/watabou/input/PointerEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/watabou/noosa/ui/Button$1;->this$0:Lcom/watabou/noosa/ui/Button;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/watabou/noosa/ui/Button;->pressed:Z

    const/4 v0, 0x0

    .line 2
    iput v0, p1, Lcom/watabou/noosa/ui/Button;->pressTime:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Lcom/watabou/noosa/ui/Button;->processed:Z

    .line 4
    invoke-virtual {p1}, Lcom/watabou/noosa/ui/Button;->onPointerDown()V

    return-void
.end method

.method public onPointerUp(Lcom/watabou/input/PointerEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/watabou/noosa/ui/Button$1;->this$0:Lcom/watabou/noosa/ui/Button;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/watabou/noosa/ui/Button;->pressed:Z

    .line 2
    invoke-virtual {p1}, Lcom/watabou/noosa/ui/Button;->onPointerUp()V

    return-void
.end method
