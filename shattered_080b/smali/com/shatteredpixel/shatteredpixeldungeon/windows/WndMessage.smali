.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndMessage;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndMessage.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    const/4 v0, 0x6

    .line 2
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    goto :goto_0

    :cond_0
    const/16 v0, 0x78

    :goto_0
    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 4
    invoke-virtual {p1, v0, v0}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 5
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 6
    iget v0, p1, Lcom/watabou/noosa/ui/Component;->width:F

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x8

    .line 7
    iget p1, p1, Lcom/watabou/noosa/ui/Component;->height:F

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x8

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method
