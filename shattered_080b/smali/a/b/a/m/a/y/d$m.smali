.class public La/b/a/m/a/y/d$m;
.super La/b/a/m/a/y/d$c;
.source "GLSurfaceViewAPI18.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/m/a/y/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation


# instance fields
.field public final synthetic k:La/b/a/m/a/y/d;


# direct methods
.method public constructor <init>(La/b/a/m/a/y/d;Z)V
    .locals 8

    .line 1
    iput-object p1, p0, La/b/a/m/a/y/d$m;->k:La/b/a/m/a/y/d;

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    const/16 v6, 0x10

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2
    invoke-direct/range {v0 .. v7}, La/b/a/m/a/y/d$c;-><init>(La/b/a/m/a/y/d;IIIIII)V

    return-void
.end method
