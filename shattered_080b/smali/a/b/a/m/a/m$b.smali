.class public La/b/a/m/a/m$b;
.super La/b/a/r/l;
.source "AndroidInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/m/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/b/a/r/l<",
        "La/b/a/m/a/m$e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(La/b/a/m/a/m;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, La/b/a/r/l;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, La/b/a/m/a/m$e;

    invoke-direct {v0}, La/b/a/m/a/m$e;-><init>()V

    return-object v0
.end method
