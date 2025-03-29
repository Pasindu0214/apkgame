.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton$1;
.super Lcom/watabou/noosa/PointerArea;
.source "SimpleButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;Lcom/watabou/noosa/Visual;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;

    invoke-direct {p0, p2}, Lcom/watabou/noosa/PointerArea;-><init>(Lcom/watabou/noosa/Visual;)V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/watabou/input/PointerEvent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;->onClick()V

    return-void
.end method

.method public onPointerDown(Lcom/watabou/input/PointerEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;

    .line 2
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;->image:Lcom/watabou/noosa/Image;

    const v0, 0x3f99999a    # 1.2f

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->brightness(F)V

    return-void
.end method

.method public onPointerUp(Lcom/watabou/input/PointerEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;

    .line 2
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/SimpleButton;->image:Lcom/watabou/noosa/Image;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Visual;->brightness(F)V

    return-void
.end method
