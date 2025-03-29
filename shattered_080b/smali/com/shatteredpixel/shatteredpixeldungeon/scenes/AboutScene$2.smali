.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AboutScene$2;
.super Lcom/watabou/noosa/PointerArea;
.source "AboutScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AboutScene;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AboutScene;FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/watabou/noosa/PointerArea;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/watabou/input/PointerEvent;)V
    .locals 0

    const-string p1, "http://pixeldungeon.watabou.ru"

    .line 1
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->openURI(Ljava/lang/String;)V

    return-void
.end method
