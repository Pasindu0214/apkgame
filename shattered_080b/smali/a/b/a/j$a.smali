.class public La/b/a/j$a;
.super Ljava/lang/Object;
.source "Net.java"

# interfaces
.implements La/b/a/r/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/io/InputStream;

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, La/b/a/j$a;->d:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, La/b/a/j$a;->g:Z

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La/b/a/j$a;->c:Ljava/util/Map;

    .line 5
    iput-object p1, p0, La/b/a/j$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, La/b/a/j$a;->a:Ljava/lang/String;

    .line 2
    iput-object v0, p0, La/b/a/j$a;->b:Ljava/lang/String;

    .line 3
    iget-object v1, p0, La/b/a/j$a;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    .line 4
    iput v1, p0, La/b/a/j$a;->d:I

    .line 5
    iput-object v0, p0, La/b/a/j$a;->e:Ljava/lang/String;

    .line 6
    iput-object v0, p0, La/b/a/j$a;->f:Ljava/io/InputStream;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, La/b/a/j$a;->g:Z

    return-void
.end method
