.class public La/b/a/m/a/a;
.super Ljava/lang/Object;
.source "AndroidApplication.java"

# interfaces
.implements La/b/a/i;


# instance fields
.field public final synthetic a:La/b/a/m/a/b;


# direct methods
.method public constructor <init>(La/b/a/m/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/a/m/a/a;->a:La/b/a/m/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/m/a/a;->a:La/b/a/m/a/b;

    iget-object v0, v0, La/b/a/m/a/b;->audio:La/b/a/m/a/f;

    invoke-virtual {v0}, La/b/a/m/a/f;->a()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/m/a/a;->a:La/b/a/m/a/b;

    iget-object v0, v0, La/b/a/m/a/b;->audio:La/b/a/m/a/f;

    invoke-virtual {v0}, La/b/a/m/a/f;->b()V

    return-void
.end method
