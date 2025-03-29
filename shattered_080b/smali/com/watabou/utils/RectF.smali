.class public Lcom/watabou/utils/RectF;
.super Ljava/lang/Object;
.source "RectF.java"


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/watabou/utils/RectF;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/watabou/utils/RectF;->left:F

    .line 4
    iput p2, p0, Lcom/watabou/utils/RectF;->top:F

    .line 5
    iput p3, p0, Lcom/watabou/utils/RectF;->right:F

    .line 6
    iput p4, p0, Lcom/watabou/utils/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method public shift(FF)Lcom/watabou/utils/RectF;
    .locals 3

    .line 1
    iget v0, p0, Lcom/watabou/utils/RectF;->left:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/watabou/utils/RectF;->top:F

    add-float/2addr v1, p2

    iget v2, p0, Lcom/watabou/utils/RectF;->right:F

    add-float/2addr v2, p1

    iget p1, p0, Lcom/watabou/utils/RectF;->bottom:F

    add-float/2addr p1, p2

    .line 2
    iput v0, p0, Lcom/watabou/utils/RectF;->left:F

    .line 3
    iput v1, p0, Lcom/watabou/utils/RectF;->top:F

    .line 4
    iput v2, p0, Lcom/watabou/utils/RectF;->right:F

    .line 5
    iput p1, p0, Lcom/watabou/utils/RectF;->bottom:F

    return-object p0
.end method
