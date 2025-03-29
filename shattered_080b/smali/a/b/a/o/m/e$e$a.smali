.class public La/b/a/o/m/e$e$a;
.super La/b/a/o/m/e$c;
.source "PixmapPacker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/o/m/e$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/o/m/e$e$a$a;
    }
.end annotation


# instance fields
.field public f:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "La/b/a/o/m/e$e$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/b/a/o/m/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La/b/a/o/m/e$c;-><init>(La/b/a/o/m/e;)V

    .line 2
    new-instance p1, La/b/a/r/a;

    invoke-direct {p1}, La/b/a/r/a;-><init>()V

    iput-object p1, p0, La/b/a/o/m/e$e$a;->f:La/b/a/r/a;

    return-void
.end method
