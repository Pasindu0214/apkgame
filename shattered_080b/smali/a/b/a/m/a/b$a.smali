.class public La/b/a/m/a/b$a;
.super Ljava/lang/Object;
.source "AndroidApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/a/m/a/b;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/b/a/m/a/b;


# direct methods
.method public constructor <init>(La/b/a/m/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/a/m/a/b$a;->a:La/b/a/m/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/m/a/b$a;->a:La/b/a/m/a/b;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
