.class public La/b/a/o/m/e$c;
.super Ljava/lang/Object;
.source "PixmapPacker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/o/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:La/b/a/r/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/k<",
            "Ljava/lang/String;",
            "La/b/a/o/m/e$d;",
            ">;"
        }
    .end annotation
.end field

.field public b:La/b/a/o/g;

.field public c:La/b/a/o/i;

.field public final d:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z


# direct methods
.method public constructor <init>(La/b/a/o/m/e;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/b/a/r/k;

    invoke-direct {v0}, La/b/a/r/k;-><init>()V

    iput-object v0, p0, La/b/a/o/m/e$c;->a:La/b/a/r/k;

    .line 3
    new-instance v0, La/b/a/r/a;

    invoke-direct {v0}, La/b/a/r/a;-><init>()V

    iput-object v0, p0, La/b/a/o/m/e$c;->d:La/b/a/r/a;

    .line 4
    new-instance v0, La/b/a/o/g;

    iget v1, p1, La/b/a/o/m/e;->c:I

    iget v2, p1, La/b/a/o/m/e;->d:I

    iget-object v3, p1, La/b/a/o/m/e;->e:La/b/a/o/g$c;

    invoke-direct {v0, v1, v2, v3}, La/b/a/o/g;-><init>(IILa/b/a/o/g$c;)V

    iput-object v0, p0, La/b/a/o/m/e$c;->b:La/b/a/o/g;

    .line 5
    sget-object v1, La/b/a/o/g$a;->a:La/b/a/o/g$a;

    invoke-virtual {v0, v1}, La/b/a/o/g;->a(La/b/a/o/g$a;)V

    .line 6
    iget-object v0, p0, La/b/a/o/m/e$c;->b:La/b/a/o/g;

    .line 7
    iget-object p1, p1, La/b/a/o/m/e;->j:La/b/a/o/a;

    if-eqz v0, :cond_0

    .line 8
    iget v1, p1, La/b/a/o/a;->a:F

    iget v2, p1, La/b/a/o/a;->b:F

    iget v3, p1, La/b/a/o/a;->c:F

    iget p1, p1, La/b/a/o/a;->d:F

    invoke-static {v1, v2, v3, p1}, La/b/a/o/a;->a(FFFF)I

    move-result p1

    iput p1, v0, La/b/a/o/g;->b:I

    .line 9
    iget-object p1, p0, La/b/a/o/m/e$c;->b:La/b/a/o/g;

    invoke-virtual {p1}, La/b/a/o/g;->b()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 10
    throw p1
.end method
