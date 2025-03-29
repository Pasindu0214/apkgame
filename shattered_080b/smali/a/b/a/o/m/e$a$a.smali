.class public La/b/a/o/m/e$a$a;
.super La/b/a/o/m/e$c;
.source "PixmapPacker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/o/m/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public f:La/b/a/o/m/e$a$b;


# direct methods
.method public constructor <init>(La/b/a/o/m/e;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, La/b/a/o/m/e$c;-><init>(La/b/a/o/m/e;)V

    .line 2
    new-instance v0, La/b/a/o/m/e$a$b;

    invoke-direct {v0}, La/b/a/o/m/e$a$b;-><init>()V

    iput-object v0, p0, La/b/a/o/m/e$a$a;->f:La/b/a/o/m/e$a$b;

    .line 3
    iget-object v0, v0, La/b/a/o/m/e$a$b;->c:La/b/a/p/c;

    iget v1, p1, La/b/a/o/m/e;->f:I

    int-to-float v2, v1

    iput v2, v0, La/b/a/p/c;->a:F

    int-to-float v2, v1

    .line 4
    iput v2, v0, La/b/a/p/c;->b:F

    .line 5
    iget v2, p1, La/b/a/o/m/e;->c:I

    mul-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v0, La/b/a/p/c;->c:F

    .line 6
    iget p1, p1, La/b/a/o/m/e;->d:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, v0, La/b/a/p/c;->d:F

    return-void
.end method
