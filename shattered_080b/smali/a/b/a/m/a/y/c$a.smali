.class public La/b/a/m/a/y/c$a;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "GLSurfaceView20API18.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/b/a/m/a/y/c;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/b/a/m/a/y/c;


# direct methods
.method public constructor <init>(La/b/a/m/a/y/c;Landroid/view/View;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, La/b/a/m/a/y/c$a;->a:La/b/a/m/a/y/c;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 26

    move-object/from16 v0, p0

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    move/from16 v2, p1

    if-ne v2, v1, :cond_1

    if-nez p2, :cond_1

    const/16 v8, 0x43

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 3
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v14, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, 0x0

    const/16 v25, 0x6

    const/16 v15, 0x43

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x6

    move-object v9, v2

    move-wide v10, v5

    move-wide v12, v5

    invoke-direct/range {v9 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-super {v0, v2}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 4
    new-instance v14, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v7, 0x1

    move-object v2, v14

    move/from16 v9, v21

    move/from16 v10, v22

    move/from16 v11, v23

    move/from16 v12, v24

    move/from16 v13, v25

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-super {v0, v14}, Landroid/view/inputmethod/BaseInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return v1

    :cond_0
    move/from16 v2, p1

    .line 5
    :cond_1
    invoke-super/range {p0 .. p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v1

    return v1
.end method
