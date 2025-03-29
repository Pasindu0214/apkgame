.class public La/b/a/m/a/m;
.super Ljava/lang/Object;
.source "AndroidInput.java"

# interfaces
.implements La/b/a/g;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/m/a/m$d;,
        La/b/a/m/a/m$e;,
        La/b/a/m/a/m$c;
    }
.end annotation


# instance fields
.field public A:La/b/a/r/h;

.field public final B:Landroid/os/Vibrator;

.field public C:Z

.field public D:Z

.field public E:Z

.field public final F:[F

.field public final G:[F

.field public H:Z

.field public I:La/b/a/h;

.field public final J:La/b/a/m/a/d;

.field public final K:La/b/a/g$a;

.field public L:Landroid/hardware/SensorEventListener;

.field public M:Landroid/hardware/SensorEventListener;

.field public N:Landroid/hardware/SensorEventListener;

.field public O:Landroid/hardware/SensorEventListener;

.field public P:Z

.field public a:La/b/a/r/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/l<",
            "La/b/a/m/a/m$c;",
            ">;"
        }
    .end annotation
.end field

.field public b:La/b/a/r/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/a/r/l<",
            "La/b/a/m/a/m$e;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/b/a/m/a/m$c;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "La/b/a/m/a/m$e;",
            ">;"
        }
    .end annotation
.end field

.field public f:[I

.field public g:[I

.field public h:[I

.field public i:[I

.field public j:[Z

.field public k:[I

.field public l:[I

.field public m:[F

.field public n:I

.field public o:[Z

.field public p:Z

.field public q:[Z

.field public r:[Z

.field public s:Landroid/hardware/SensorManager;

.field public t:Z

.field public final u:[F

.field public final v:[F

.field public final w:La/b/a/a;

.field public final x:Landroid/content/Context;

.field public final y:La/b/a/m/a/v;

.field public z:I


# direct methods
.method public constructor <init>(La/b/a/a;Landroid/content/Context;Ljava/lang/Object;La/b/a/m/a/d;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/b/a/m/a/m$a;

    const/16 v1, 0x3e8

    const/16 v2, 0x10

    invoke-direct {v0, p0, v2, v1}, La/b/a/m/a/m$a;-><init>(La/b/a/m/a/m;II)V

    iput-object v0, p0, La/b/a/m/a/m;->a:La/b/a/r/l;

    .line 3
    new-instance v0, La/b/a/m/a/m$b;

    invoke-direct {v0, p0, v2, v1}, La/b/a/m/a/m$b;-><init>(La/b/a/m/a/m;II)V

    iput-object v0, p0, La/b/a/m/a/m;->b:La/b/a/r/l;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/b/a/m/a/m;->c:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/b/a/m/a/m;->d:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/b/a/m/a/m;->e:Ljava/util/ArrayList;

    const/16 v0, 0x14

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, La/b/a/m/a/m;->f:[I

    new-array v1, v0, [I

    .line 8
    iput-object v1, p0, La/b/a/m/a/m;->g:[I

    new-array v1, v0, [I

    .line 9
    iput-object v1, p0, La/b/a/m/a/m;->h:[I

    new-array v1, v0, [I

    .line 10
    iput-object v1, p0, La/b/a/m/a/m;->i:[I

    new-array v1, v0, [Z

    .line 11
    iput-object v1, p0, La/b/a/m/a/m;->j:[Z

    new-array v1, v0, [I

    .line 12
    iput-object v1, p0, La/b/a/m/a/m;->k:[I

    new-array v1, v0, [I

    .line 13
    iput-object v1, p0, La/b/a/m/a/m;->l:[I

    new-array v1, v0, [F

    .line 14
    iput-object v1, p0, La/b/a/m/a/m;->m:[F

    const/4 v1, 0x0

    .line 15
    iput v1, p0, La/b/a/m/a/m;->n:I

    const/16 v2, 0x104

    new-array v3, v2, [Z

    .line 16
    iput-object v3, p0, La/b/a/m/a/m;->o:[Z

    .line 17
    iput-boolean v1, p0, La/b/a/m/a/m;->p:Z

    new-array v2, v2, [Z

    .line 18
    iput-object v2, p0, La/b/a/m/a/m;->q:[Z

    new-array v0, v0, [Z

    .line 19
    iput-object v0, p0, La/b/a/m/a/m;->r:[Z

    .line 20
    iput-boolean v1, p0, La/b/a/m/a/m;->t:Z

    const/4 v0, 0x3

    new-array v2, v0, [F

    .line 21
    iput-object v2, p0, La/b/a/m/a/m;->u:[F

    new-array v2, v0, [F

    .line 22
    iput-object v2, p0, La/b/a/m/a/m;->v:[F

    .line 23
    iput v1, p0, La/b/a/m/a/m;->z:I

    .line 24
    new-instance v2, La/b/a/r/h;

    invoke-direct {v2}, La/b/a/r/h;-><init>()V

    iput-object v2, p0, La/b/a/m/a/m;->A:La/b/a/r/h;

    .line 25
    iput-boolean v1, p0, La/b/a/m/a/m;->C:Z

    .line 26
    iput-boolean v1, p0, La/b/a/m/a/m;->D:Z

    new-array v2, v0, [F

    .line 27
    iput-object v2, p0, La/b/a/m/a/m;->F:[F

    new-array v2, v0, [F

    .line 28
    iput-object v2, p0, La/b/a/m/a/m;->G:[F

    .line 29
    iput-boolean v1, p0, La/b/a/m/a/m;->H:Z

    const/4 v2, 0x1

    .line 30
    iput-boolean v2, p0, La/b/a/m/a/m;->P:Z

    .line 31
    instance-of v3, p3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 32
    check-cast p3, Landroid/view/View;

    .line 33
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 34
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 35
    invoke-virtual {p3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 36
    invoke-virtual {p3, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 37
    invoke-virtual {p3}, Landroid/view/View;->requestFocus()Z

    .line 38
    :cond_0
    iput-object p4, p0, La/b/a/m/a/m;->J:La/b/a/m/a/d;

    .line 39
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    const/4 p3, 0x0

    .line 40
    :goto_0
    iget-object v3, p0, La/b/a/m/a/m;->l:[I

    array-length v4, v3

    if-ge p3, v4, :cond_1

    const/4 v4, -0x1

    .line 41
    aput v4, v3, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 42
    :cond_1
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 43
    iput-object p1, p0, La/b/a/m/a/m;->w:La/b/a/a;

    .line 44
    iput-object p2, p0, La/b/a/m/a/m;->x:Landroid/content/Context;

    .line 45
    iget p1, p4, La/b/a/m/a/d;->m:I

    iput p1, p0, La/b/a/m/a/m;->z:I

    .line 46
    new-instance p1, La/b/a/m/a/p;

    invoke-direct {p1}, La/b/a/m/a/p;-><init>()V

    iput-object p1, p0, La/b/a/m/a/m;->y:La/b/a/m/a/v;

    .line 47
    check-cast p1, La/b/a/m/a/p;

    if-eqz p1, :cond_b

    .line 48
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p3, "android.hardware.touchscreen.multitouch"

    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    const-string p1, "vibrator"

    .line 49
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, La/b/a/m/a/m;->B:Landroid/os/Vibrator;

    .line 50
    iget-object p1, p0, La/b/a/m/a/m;->x:Landroid/content/Context;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_2

    .line 51
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    goto :goto_1

    :cond_2
    const-string p2, "window"

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    :goto_1
    const/16 p2, 0x10e

    const/16 p3, 0xb4

    const/16 p4, 0x5a

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x10e

    goto :goto_2

    :cond_4
    const/16 v1, 0xb4

    goto :goto_2

    :cond_5
    const/16 v1, 0x5a

    .line 53
    :goto_2
    iget-object p1, p0, La/b/a/m/a/m;->w:La/b/a/a;

    invoke-interface {p1}, La/b/a/a;->getGraphics()La/b/a/f;

    move-result-object p1

    check-cast p1, La/b/a/m/a/l;

    invoke-virtual {p1}, La/b/a/m/a/l;->b()La/b/a/f$a;

    move-result-object p1

    if-eqz v1, :cond_6

    if-ne v1, p3, :cond_7

    .line 54
    :cond_6
    iget p3, p1, La/b/a/f$a;->a:I

    iget v0, p1, La/b/a/f$a;->b:I

    if-ge p3, v0, :cond_a

    :cond_7
    if-eq v1, p4, :cond_8

    if-ne v1, p2, :cond_9

    :cond_8
    iget p2, p1, La/b/a/f$a;->a:I

    iget p1, p1, La/b/a/f$a;->b:I

    if-gt p2, p1, :cond_9

    goto :goto_3

    .line 55
    :cond_9
    sget-object p1, La/b/a/g$a;->b:La/b/a/g$a;

    iput-object p1, p0, La/b/a/m/a/m;->K:La/b/a/g$a;

    goto :goto_4

    .line 56
    :cond_a
    :goto_3
    sget-object p1, La/b/a/g$a;->a:La/b/a/g$a;

    iput-object p1, p0, La/b/a/m/a/m;->K:La/b/a/g$a;

    .line 57
    :goto_4
    iget-object p1, p0, La/b/a/m/a/m;->A:La/b/a/r/h;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, La/b/a/r/h;->a(I)Z

    return-void

    :cond_b
    const/4 p1, 0x0

    .line 58
    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method


# virtual methods
.method public a()I
    .locals 5

    .line 30
    iget-object v0, p0, La/b/a/m/a/m;->l:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 31
    iget-object v3, p0, La/b/a/m/a/m;->l:[I

    aget v3, v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 32
    :cond_1
    iget-object v2, p0, La/b/a/m/a/m;->l:[I

    invoke-virtual {p0, v2}, La/b/a/m/a/m;->a([I)[I

    move-result-object v2

    iput-object v2, p0, La/b/a/m/a/m;->l:[I

    .line 33
    iget-object v2, p0, La/b/a/m/a/m;->f:[I

    invoke-virtual {p0, v2}, La/b/a/m/a/m;->a([I)[I

    move-result-object v2

    iput-object v2, p0, La/b/a/m/a/m;->f:[I

    .line 34
    iget-object v2, p0, La/b/a/m/a/m;->g:[I

    invoke-virtual {p0, v2}, La/b/a/m/a/m;->a([I)[I

    move-result-object v2

    iput-object v2, p0, La/b/a/m/a/m;->g:[I

    .line 35
    iget-object v2, p0, La/b/a/m/a/m;->h:[I

    invoke-virtual {p0, v2}, La/b/a/m/a/m;->a([I)[I

    move-result-object v2

    iput-object v2, p0, La/b/a/m/a/m;->h:[I

    .line 36
    iget-object v2, p0, La/b/a/m/a/m;->i:[I

    invoke-virtual {p0, v2}, La/b/a/m/a/m;->a([I)[I

    move-result-object v2

    iput-object v2, p0, La/b/a/m/a/m;->i:[I

    .line 37
    iget-object v2, p0, La/b/a/m/a/m;->j:[Z

    .line 38
    array-length v3, v2

    add-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Z

    .line 39
    array-length v4, v2

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iput-object v3, p0, La/b/a/m/a/m;->j:[Z

    .line 41
    iget-object v1, p0, La/b/a/m/a/m;->k:[I

    invoke-virtual {p0, v1}, La/b/a/m/a/m;->a([I)[I

    move-result-object v1

    iput-object v1, p0, La/b/a/m/a/m;->k:[I

    return v0
.end method

.method public a(I)V
    .locals 3

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 28
    iget-object v0, p0, La/b/a/m/a/m;->B:Landroid/os/Vibrator;

    int-to-long v1, p1

    const/4 p1, -0x1

    invoke-static {v1, v2, p1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, La/b/a/m/a/m;->B:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_0
    return-void
.end method

.method public a(IZ)V
    .locals 4

    if-nez p2, :cond_7

    .line 4
    iget-object p2, p0, La/b/a/m/a/m;->A:La/b/a/r/h;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 5
    iget-boolean p1, p2, La/b/a/r/h;->e:Z

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 6
    :cond_0
    iput-boolean v0, p2, La/b/a/r/h;->e:Z

    .line 7
    iget p1, p2, La/b/a/r/h;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, La/b/a/r/h;->a:I

    goto :goto_1

    .line 8
    :cond_1
    iget v1, p2, La/b/a/r/h;->h:I

    and-int/2addr v1, p1

    .line 9
    iget-object v2, p2, La/b/a/r/h;->b:[I

    aget v3, v2, v1

    if-ne v3, p1, :cond_2

    .line 10
    aput v0, v2, v1

    .line 11
    iget p1, p2, La/b/a/r/h;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, La/b/a/r/h;->a:I

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p2, p1}, La/b/a/r/h;->d(I)I

    move-result v1

    .line 13
    iget-object v2, p2, La/b/a/r/h;->b:[I

    aget v3, v2, v1

    if-ne v3, p1, :cond_3

    .line 14
    aput v0, v2, v1

    .line 15
    iget p1, p2, La/b/a/r/h;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, La/b/a/r/h;->a:I

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p2, p1}, La/b/a/r/h;->e(I)I

    move-result v1

    .line 17
    iget-object v2, p2, La/b/a/r/h;->b:[I

    aget v3, v2, v1

    if-ne v3, p1, :cond_4

    .line 18
    aput v0, v2, v1

    .line 19
    iget p1, p2, La/b/a/r/h;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, La/b/a/r/h;->a:I

    goto :goto_1

    .line 20
    :cond_4
    iget v0, p2, La/b/a/r/h;->c:I

    iget v1, p2, La/b/a/r/h;->d:I

    add-int/2addr v1, v0

    :goto_0
    if-ge v0, v1, :cond_8

    .line 21
    aget v3, v2, v0

    if-ne v3, p1, :cond_6

    .line 22
    iget p1, p2, La/b/a/r/h;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, La/b/a/r/h;->d:I

    .line 23
    iget v1, p2, La/b/a/r/h;->c:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_5

    .line 24
    iget-object p1, p2, La/b/a/r/h;->b:[I

    aget v1, p1, v1

    aput v1, p1, v0

    .line 25
    :cond_5
    iget p1, p2, La/b/a/r/h;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p2, La/b/a/r/h;->a:I

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    .line 26
    iget-object p2, p0, La/b/a/m/a/m;->A:La/b/a/r/h;

    invoke-virtual {p2, p1}, La/b/a/r/h;->a(I)Z

    :cond_8
    :goto_1
    return-void
.end method

.method public a(La/b/a/h;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, La/b/a/m/a/m;->I:La/b/a/h;

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a([I)[I
    .locals 3

    .line 42
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 43
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public b(I)I
    .locals 5

    .line 47
    iget-object v0, p0, La/b/a/m/a/m;->l:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 48
    iget-object v3, p0, La/b/a/m/a/m;->l:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ge v1, v0, :cond_2

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, La/b/a/m/a/m;->l:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    :cond_2
    sget-object v0, La/b/a/e;->a:La/b/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pointer ID lookup failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AndroidInput"

    invoke-interface {v0, v1, p1}, La/b/a/a;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public b()V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, La/b/a/m/a/m;->H:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, La/b/a/m/a/m;->H:Z

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, La/b/a/m/a/m;->r:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 5
    iget-object v2, p0, La/b/a/m/a/m;->r:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p0, La/b/a/m/a/m;->p:Z

    if-eqz v0, :cond_1

    .line 7
    iput-boolean v1, p0, La/b/a/m/a/m;->p:Z

    const/4 v0, 0x0

    .line 8
    :goto_1
    iget-object v2, p0, La/b/a/m/a/m;->q:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 9
    iget-object v2, p0, La/b/a/m/a/m;->q:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, La/b/a/m/a/m;->I:La/b/a/h;

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    .line 11
    iget-object v0, p0, La/b/a/m/a/m;->I:La/b/a/h;

    .line 12
    iget-object v3, p0, La/b/a/m/a/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x2

    if-ge v4, v3, :cond_6

    .line 13
    iget-object v6, p0, La/b/a/m/a/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La/b/a/m/a/m$c;

    .line 14
    iget-wide v7, v6, La/b/a/m/a/m$c;->a:J

    .line 15
    iget v7, v6, La/b/a/m/a/m$c;->b:I

    if-eqz v7, :cond_5

    if-eq v7, v2, :cond_4

    if-eq v7, v5, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 16
    throw v0

    .line 17
    :cond_4
    iget v5, v6, La/b/a/m/a/m$c;->c:I

    invoke-virtual {v0, v5}, La/b/a/h;->keyUp(I)Z

    goto :goto_3

    .line 18
    :cond_5
    iget v5, v6, La/b/a/m/a/m$c;->c:I

    invoke-virtual {v0, v5}, La/b/a/h;->keyDown(I)Z

    .line 19
    iput-boolean v2, p0, La/b/a/m/a/m;->p:Z

    .line 20
    iget-object v5, p0, La/b/a/m/a/m;->q:[Z

    iget v7, v6, La/b/a/m/a/m$c;->c:I

    aput-boolean v2, v5, v7

    .line 21
    :goto_3
    iget-object v5, p0, La/b/a/m/a/m;->a:La/b/a/r/l;

    invoke-virtual {v5, v6}, La/b/a/r/l;->a(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 22
    :cond_6
    iget-object v3, p0, La/b/a/m/a/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_f

    .line 23
    iget-object v6, p0, La/b/a/m/a/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La/b/a/m/a/m$e;

    .line 24
    iget-wide v7, v6, La/b/a/m/a/m$e;->a:J

    .line 25
    iget v7, v6, La/b/a/m/a/m$e;->b:I

    if-eqz v7, :cond_b

    if-eq v7, v2, :cond_a

    if-eq v7, v5, :cond_9

    const/4 v8, 0x3

    if-eq v7, v8, :cond_8

    const/4 v8, 0x4

    if-eq v7, v8, :cond_7

    goto :goto_5

    .line 26
    :cond_7
    iget v7, v6, La/b/a/m/a/m$e;->c:I

    iget v8, v6, La/b/a/m/a/m$e;->d:I

    invoke-virtual {v0, v7, v8}, La/b/a/h;->mouseMoved(II)Z

    goto :goto_5

    .line 27
    :cond_8
    iget v7, v6, La/b/a/m/a/m$e;->e:I

    invoke-virtual {v0, v7}, La/b/a/h;->scrolled(I)Z

    goto :goto_5

    .line 28
    :cond_9
    iget v7, v6, La/b/a/m/a/m$e;->c:I

    iget v8, v6, La/b/a/m/a/m$e;->d:I

    iget v9, v6, La/b/a/m/a/m$e;->g:I

    invoke-virtual {v0, v7, v8, v9}, La/b/a/h;->touchDragged(III)Z

    goto :goto_5

    .line 29
    :cond_a
    iget v7, v6, La/b/a/m/a/m$e;->c:I

    iget v8, v6, La/b/a/m/a/m$e;->d:I

    iget v9, v6, La/b/a/m/a/m$e;->g:I

    iget v10, v6, La/b/a/m/a/m$e;->f:I

    invoke-virtual {v0, v7, v8, v9, v10}, La/b/a/h;->touchUp(IIII)Z

    goto :goto_5

    .line 30
    :cond_b
    iget v7, v6, La/b/a/m/a/m$e;->c:I

    iget v8, v6, La/b/a/m/a/m$e;->d:I

    iget v9, v6, La/b/a/m/a/m$e;->g:I

    iget v10, v6, La/b/a/m/a/m$e;->f:I

    invoke-virtual {v0, v7, v8, v9, v10}, La/b/a/h;->touchDown(IIII)Z

    .line 31
    iput-boolean v2, p0, La/b/a/m/a/m;->H:Z

    .line 32
    iget-object v7, p0, La/b/a/m/a/m;->r:[Z

    iget v8, v6, La/b/a/m/a/m$e;->f:I

    aput-boolean v2, v7, v8

    .line 33
    :goto_5
    iget-object v7, p0, La/b/a/m/a/m;->b:La/b/a/r/l;

    invoke-virtual {v7, v6}, La/b/a/r/l;->a(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 34
    :cond_c
    iget-object v0, p0, La/b/a/m/a/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_e

    .line 35
    iget-object v4, p0, La/b/a/m/a/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La/b/a/m/a/m$e;

    .line 36
    iget v5, v4, La/b/a/m/a/m$e;->b:I

    if-nez v5, :cond_d

    iput-boolean v2, p0, La/b/a/m/a/m;->H:Z

    .line 37
    :cond_d
    iget-object v5, p0, La/b/a/m/a/m;->b:La/b/a/r/l;

    invoke-virtual {v5, v4}, La/b/a/r/l;->a(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 38
    :cond_e
    iget-object v0, p0, La/b/a/m/a/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_f

    .line 39
    iget-object v3, p0, La/b/a/m/a/m;->a:La/b/a/r/l;

    iget-object v4, p0, La/b/a/m/a/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, La/b/a/r/l;->a(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 40
    :cond_f
    iget-object v0, p0, La/b/a/m/a/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 41
    :goto_8
    iget-object v2, p0, La/b/a/m/a/m;->h:[I

    array-length v2, v2

    if-ge v0, v2, :cond_10

    .line 42
    iget-object v2, p0, La/b/a/m/a/m;->h:[I

    aput v1, v2, v1

    .line 43
    iget-object v2, p0, La/b/a/m/a/m;->i:[I

    aput v1, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 44
    :cond_10
    iget-object v0, p0, La/b/a/m/a/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 45
    iget-object v0, p0, La/b/a/m/a/m;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 1
    iget-object v0, p0, La/b/a/m/a/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 2
    iget-object v4, p0, La/b/a/m/a/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View$OnKeyListener;

    invoke-interface {v4, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 4
    iget-object p1, p0, La/b/a/m/a/m;->A:La/b/a/r/h;

    invoke-virtual {p1, p2}, La/b/a/r/h;->c(I)Z

    move-result p1

    return p1

    .line 5
    :cond_2
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x2

    if-nez p1, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 8
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 9
    iget-object p3, p0, La/b/a/m/a/m;->a:La/b/a/r/l;

    invoke-virtual {p3}, La/b/a/r/l;->b()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, La/b/a/m/a/m$c;

    .line 10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p3, La/b/a/m/a/m$c;->a:J

    .line 11
    iput v1, p3, La/b/a/m/a/m$c;->c:I

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p3, La/b/a/m/a/m$c;->d:C

    .line 13
    iput v0, p3, La/b/a/m/a/m$c;->b:I

    .line 14
    iget-object v2, p0, La/b/a/m/a/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 15
    :cond_3
    monitor-exit p0

    return v1

    .line 16
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p1

    int-to-char p1, p1

    const/16 v2, 0x43

    if-ne p2, v2, :cond_5

    const/16 p1, 0x8

    .line 17
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    if-ltz v2, :cond_d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v4, 0x104

    if-lt v2, v4, :cond_6

    goto/16 :goto_3

    .line 18
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v4, 0x4

    const/16 v5, 0xff

    if-eqz v2, :cond_a

    if-eq v2, v3, :cond_7

    goto/16 :goto_2

    .line 19
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 20
    iget-object v2, p0, La/b/a/m/a/m;->a:La/b/a/r/l;

    invoke-virtual {v2}, La/b/a/r/l;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/m/a/m$c;

    .line 21
    iput-wide v6, v2, La/b/a/m/a/m$c;->a:J

    .line 22
    iput-char v1, v2, La/b/a/m/a/m$c;->d:C

    .line 23
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    iput v8, v2, La/b/a/m/a/m$c;->c:I

    .line 24
    iput v3, v2, La/b/a/m/a/m$c;->b:I

    if-ne p2, v4, :cond_8

    .line 25
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 26
    iput v5, v2, La/b/a/m/a/m$c;->c:I

    const/16 p2, 0xff

    .line 27
    :cond_8
    iget-object v4, p0, La/b/a/m/a/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v2, p0, La/b/a/m/a/m;->a:La/b/a/r/l;

    invoke-virtual {v2}, La/b/a/r/l;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/b/a/m/a/m$c;

    .line 29
    iput-wide v6, v2, La/b/a/m/a/m$c;->a:J

    .line 30
    iput-char p1, v2, La/b/a/m/a/m$c;->d:C

    .line 31
    iput v1, v2, La/b/a/m/a/m$c;->c:I

    .line 32
    iput v0, v2, La/b/a/m/a/m$c;->b:I

    .line 33
    iget-object p1, p0, La/b/a/m/a/m;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne p2, v5, :cond_9

    .line 34
    iget-object p1, p0, La/b/a/m/a/m;->o:[Z

    aget-boolean p1, p1, v5

    if-eqz p1, :cond_c

    .line 35
    iget p1, p0, La/b/a/m/a/m;->n:I

    sub-int/2addr p1, v3

    iput p1, p0, La/b/a/m/a/m;->n:I

    .line 36
    iget-object p1, p0, La/b/a/m/a/m;->o:[Z

    aput-boolean v1, p1, v5

    goto :goto_2

    .line 37
    :cond_9
    iget-object p1, p0, La/b/a/m/a/m;->o:[Z

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_c

    .line 38
    iget p1, p0, La/b/a/m/a/m;->n:I

    sub-int/2addr p1, v3

    iput p1, p0, La/b/a/m/a/m;->n:I

    .line 39
    iget-object p1, p0, La/b/a/m/a/m;->o:[Z

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p3

    aput-boolean v1, p1, p3

    goto :goto_2

    .line 40
    :cond_a
    iget-object p1, p0, La/b/a/m/a/m;->a:La/b/a/r/l;

    invoke-virtual {p1}, La/b/a/r/l;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La/b/a/m/a/m$c;

    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p1, La/b/a/m/a/m$c;->a:J

    .line 42
    iput-char v1, p1, La/b/a/m/a/m$c;->d:C

    .line 43
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p1, La/b/a/m/a/m$c;->c:I

    .line 44
    iput v1, p1, La/b/a/m/a/m$c;->b:I

    if-ne p2, v4, :cond_b

    .line 45
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 46
    iput v5, p1, La/b/a/m/a/m$c;->c:I

    const/16 p2, 0xff

    .line 47
    :cond_b
    iget-object p3, p0, La/b/a/m/a/m;->d:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object p3, p0, La/b/a/m/a/m;->o:[Z

    iget v0, p1, La/b/a/m/a/m$c;->c:I

    aget-boolean p3, p3, v0

    if-nez p3, :cond_c

    .line 49
    iget p3, p0, La/b/a/m/a/m;->n:I

    add-int/2addr p3, v3

    iput p3, p0, La/b/a/m/a/m;->n:I

    .line 50
    iget-object p3, p0, La/b/a/m/a/m;->o:[Z

    iget p1, p1, La/b/a/m/a/m$c;->c:I

    aput-boolean v3, p3, p1

    .line 51
    :cond_c
    :goto_2
    iget-object p1, p0, La/b/a/m/a/m;->w:La/b/a/a;

    invoke-interface {p1}, La/b/a/a;->getGraphics()La/b/a/f;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p1, La/b/a/m/a/l;

    :try_start_1
    invoke-virtual {p1}, La/b/a/m/a/l;->e()V

    .line 52
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    iget-object p1, p0, La/b/a/m/a/m;->A:La/b/a/r/h;

    invoke-virtual {p1, p2}, La/b/a/r/h;->c(I)Z

    move-result p1

    return p1

    .line 54
    :cond_d
    :goto_3
    :try_start_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 55
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, La/b/a/m/a/m;->P:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, La/b/a/m/a/m;->P:Z

    .line 5
    :cond_0
    iget-object p1, p0, La/b/a/m/a/m;->y:La/b/a/m/a/v;

    check-cast p1, La/b/a/m/a/p;

    invoke-virtual {p1, p2, p0}, La/b/a/m/a/p;->a(Landroid/view/MotionEvent;La/b/a/m/a/m;)V

    .line 6
    iget p1, p0, La/b/a/m/a/m;->z:I

    if-eqz p1, :cond_1

    int-to-long p1, p1

    .line 7
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return v1
.end method
