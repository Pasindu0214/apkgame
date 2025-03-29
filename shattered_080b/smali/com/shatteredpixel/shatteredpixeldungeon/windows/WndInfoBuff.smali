.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoBuff;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndInfoBuff.java"


# instance fields
.field public film:Lcom/watabou/noosa/TextureFilm;

.field public icons:Lcom/watabou/gltextures/SmartTexture;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>()V

    const-string v1, "large_buffs.png"

    .line 3
    invoke-static {v1}, Lcom/watabou/gltextures/TextureCache;->get(Ljava/lang/Object;)Lcom/watabou/gltextures/SmartTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoBuff;->icons:Lcom/watabou/gltextures/SmartTexture;

    .line 4
    new-instance v1, Lcom/watabou/noosa/TextureFilm;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoBuff;->icons:Lcom/watabou/gltextures/SmartTexture;

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3, v3}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoBuff;->film:Lcom/watabou/noosa/TextureFilm;

    .line 5
    new-instance v1, Lcom/watabou/noosa/Image;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoBuff;->icons:Lcom/watabou/gltextures/SmartTexture;

    .line 6
    invoke-direct {v1}, Lcom/watabou/noosa/Image;-><init>()V

    .line 7
    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 8
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoBuff;->film:Lcom/watabou/noosa/TextureFilm;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->icon()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    .line 9
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->tintIcon(Lcom/watabou/noosa/Image;)V

    .line 10
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 11
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0xffff44

    .line 13
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 14
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    const/high16 v1, 0x42f00000    # 120.0f

    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2, v2, v1, v2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 16
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 17
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->desc()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x6

    invoke-static {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    const/16 v1, 0x78

    .line 18
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 19
    iget v2, v0, Lcom/watabou/noosa/ui/Component;->x:F

    .line 20
    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    const/high16 v3, 0x40800000    # 4.0f

    add-float/2addr v0, v3

    invoke-virtual {p1, v2, v0}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 21
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 22
    invoke-virtual {p1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    float-to-int p1, p1

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method
