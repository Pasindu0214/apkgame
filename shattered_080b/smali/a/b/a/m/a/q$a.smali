.class public La/b/a/m/a/q$a;
.super Ljava/lang/Object;
.source "AndroidMusic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/a/m/a/q;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/b/a/m/a/q;


# direct methods
.method public constructor <init>(La/b/a/m/a/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/a/m/a/q$a;->a:La/b/a/m/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/a/m/a/q$a;->a:La/b/a/m/a/q;

    iget-object v1, v0, La/b/a/m/a/q;->e:La/b/a/l/a$a;

    invoke-interface {v1, v0}, La/b/a/l/a$a;->a(La/b/a/l/a;)V

    return-void
.end method
