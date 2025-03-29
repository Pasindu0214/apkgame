.class public final Lcom/watabou/noosa/Game$1;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$c:Lcom/watabou/utils/Callback;


# direct methods
.method public constructor <init>(Lcom/watabou/utils/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/watabou/noosa/Game$1;->val$c:Lcom/watabou/utils/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Game$1;->val$c:Lcom/watabou/utils/Callback;

    invoke-interface {v0}, Lcom/watabou/utils/Callback;->call()V

    return-void
.end method
