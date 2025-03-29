.class public La/b/a/m/a/r;
.super Ljava/lang/Object;
.source "AndroidNet.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/net/Uri;

.field public final synthetic b:La/b/a/m/a/s;


# direct methods
.method public constructor <init>(La/b/a/m/a/s;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/a/m/a/r;->b:La/b/a/m/a/s;

    iput-object p2, p0, La/b/a/m/a/r;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, La/b/a/m/a/r;->a:Landroid/net/Uri;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    iget-object v1, p0, La/b/a/m/a/r;->b:La/b/a/m/a/s;

    iget-object v1, v1, La/b/a/m/a/s;->a:La/b/a/m/a/c;

    invoke-interface {v1}, La/b/a/m/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4
    :cond_0
    iget-object v1, p0, La/b/a/m/a/r;->b:La/b/a/m/a/s;

    iget-object v1, v1, La/b/a/m/a/s;->a:La/b/a/m/a/c;

    invoke-interface {v1, v0}, La/b/a/m/a/c;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
