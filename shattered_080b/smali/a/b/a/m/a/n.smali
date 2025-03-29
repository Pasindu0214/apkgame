.class public La/b/a/m/a/n;
.super La/b/a/m/a/m;
.source "AndroidInputThreePlus.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# instance fields
.field public Q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnGenericMotionListener;",
            ">;"
        }
    .end annotation
.end field

.field public final R:La/b/a/m/a/o;


# direct methods
.method public constructor <init>(La/b/a/a;Landroid/content/Context;Ljava/lang/Object;La/b/a/m/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, La/b/a/m/a/m;-><init>(La/b/a/a;Landroid/content/Context;Ljava/lang/Object;La/b/a/m/a/d;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, La/b/a/m/a/n;->Q:Ljava/util/ArrayList;

    .line 3
    instance-of p1, p3, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 4
    check-cast p3, Landroid/view/View;

    .line 5
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 6
    :cond_0
    new-instance p1, La/b/a/m/a/o;

    invoke-direct {p1}, La/b/a/m/a/o;-><init>()V

    iput-object p1, p0, La/b/a/m/a/n;->R:La/b/a/m/a/o;

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, La/b/a/m/a/n;->R:La/b/a/m/a/o;

    invoke-virtual {v0, p2, p0}, La/b/a/m/a/o;->a(Landroid/view/MotionEvent;La/b/a/m/a/m;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, La/b/a/m/a/n;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 3
    iget-object v4, p0, La/b/a/m/a/n;->Q:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View$OnGenericMotionListener;

    invoke-interface {v4, p1, p2}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
