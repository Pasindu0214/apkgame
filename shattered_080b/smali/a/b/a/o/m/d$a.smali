.class public La/b/a/o/m/d$a;
.super Ljava/lang/Object;
.source "GlyphLayout.java"

# interfaces
.implements La/b/a/r/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/o/m/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:La/b/a/r/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/a<",
            "La/b/a/o/m/b$b;",
            ">;"
        }
    .end annotation
.end field

.field public b:La/b/a/r/b;

.field public c:F

.field public d:F

.field public e:F

.field public final f:La/b/a/o/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/b/a/r/a;

    invoke-direct {v0}, La/b/a/r/a;-><init>()V

    iput-object v0, p0, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    .line 3
    new-instance v0, La/b/a/r/b;

    invoke-direct {v0}, La/b/a/r/b;-><init>()V

    iput-object v0, p0, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    .line 4
    new-instance v0, La/b/a/o/a;

    invoke-direct {v0}, La/b/a/o/a;-><init>()V

    iput-object v0, p0, La/b/a/o/m/d$a;->f:La/b/a/o/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    invoke-virtual {v0}, La/b/a/r/a;->clear()V

    .line 2
    iget-object v0, p0, La/b/a/o/m/d$a;->b:La/b/a/r/b;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, La/b/a/r/b;->b:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, La/b/a/o/m/d$a;->e:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    iget v1, v1, La/b/a/r/a;->b:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    iget-object v1, p0, La/b/a/o/m/d$a;->a:La/b/a/r/a;

    .line 3
    iget v2, v1, La/b/a/r/a;->b:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 4
    invoke-virtual {v1, v3}, La/b/a/r/a;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/b/a/o/m/b$b;

    .line 5
    iget v4, v4, La/b/a/o/m/b$b;->a:I

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ", #"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v1, p0, La/b/a/o/m/d$a;->f:La/b/a/o/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget v2, p0, La/b/a/o/m/d$a;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v2, p0, La/b/a/o/m/d$a;->d:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget v1, p0, La/b/a/o/m/d$a;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
