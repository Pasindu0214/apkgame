.class public Lcom/watabou/noosa/Scene$1;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Lcom/watabou/utils/Signal$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/watabou/noosa/Scene;->create()V
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
.field public final synthetic this$0:Lcom/watabou/noosa/Scene;


# direct methods
.method public constructor <init>(Lcom/watabou/noosa/Scene;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/watabou/noosa/Scene$1;->this$0:Lcom/watabou/noosa/Scene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignal(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/watabou/input/KeyEvent;

    .line 2
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/watabou/input/KeyEvent;->pressed:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/watabou/input/KeyBindings;->getActionForKey(Lcom/watabou/input/KeyEvent;)Lcom/watabou/input/GameAction;

    move-result-object p1

    sget-object v0, Lcom/watabou/input/GameAction;->BACK:Lcom/watabou/input/GameAction;

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/watabou/noosa/Scene$1;->this$0:Lcom/watabou/noosa/Scene;

    invoke-virtual {p1}, Lcom/watabou/noosa/Scene;->onBackPressed()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
