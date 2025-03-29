.class public Lcom/watabou/utils/BitmapCache$Layer;
.super Ljava/util/HashMap;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/watabou/utils/BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Layer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Object;",
        "La/b/a/o/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/watabou/utils/BitmapCache$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/b/a/o/g;

    .line 2
    invoke-virtual {v1}, La/b/a/o/g;->a()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
