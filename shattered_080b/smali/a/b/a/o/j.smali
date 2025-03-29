.class public La/b/a/o/j;
.super La/b/a/o/e;
.source "TextureArray.java"


# static fields
.field public static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "La/b/a/a;",
            "La/b/a/r/a<",
            "La/b/a/o/j;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public g:La/b/a/o/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/b/a/o/j;->h:Ljava/util/Map;

    return-void
.end method
