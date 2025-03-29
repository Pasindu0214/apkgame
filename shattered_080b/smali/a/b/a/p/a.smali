.class public final La/b/a/p/a;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field public static a:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La/b/a/p/b;

    invoke-direct {v0}, La/b/a/p/b;-><init>()V

    sput-object v0, La/b/a/p/a;->a:Ljava/util/Random;

    return-void
.end method

.method public static a(I)Z
    .locals 1

    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(I)I
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v1, p0, 0x1

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x2

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x4

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x8

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x10

    or-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0
.end method

.method public static c(I)I
    .locals 1

    .line 1
    sget-object v0, La/b/a/p/a;->a:Ljava/util/Random;

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0
.end method
