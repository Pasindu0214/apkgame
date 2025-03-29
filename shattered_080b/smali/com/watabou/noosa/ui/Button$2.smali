.class public Lcom/watabou/noosa/ui/Button$2;
.super Ljava/lang/Object;
.source "Button.java"

# interfaces
.implements Lcom/watabou/utils/Signal$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/watabou/noosa/ui/Button;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/watabou/utils/Signal$Listener<",
        "Lcom/watabou/input/KeyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/watabou/noosa/ui/Button;


# direct methods
.method public constructor <init>(Lcom/watabou/noosa/ui/Button;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/watabou/noosa/ui/Button$2;->this$0:Lcom/watabou/noosa/ui/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignal(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/watabou/input/KeyEvent;

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/ui/Button$2;->this$0:Lcom/watabou/noosa/ui/Button;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->active:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/watabou/input/KeyEvent;->pressed:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/watabou/input/KeyBindings;->getActionForKey(Lcom/watabou/input/KeyEvent;)Lcom/watabou/input/GameAction;

    move-result-object p1

    iget-object v0, p0, Lcom/watabou/noosa/ui/Button$2;->this$0:Lcom/watabou/noosa/ui/Button;

    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Button;->keyAction()Lcom/watabou/input/GameAction;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/watabou/noosa/ui/Button$2;->this$0:Lcom/watabou/noosa/ui/Button;

    invoke-virtual {p1}, Lcom/watabou/noosa/ui/Button;->onClick()V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
