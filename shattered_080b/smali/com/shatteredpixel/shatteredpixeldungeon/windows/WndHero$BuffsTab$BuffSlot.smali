.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;
.super Lcom/watabou/noosa/ui/Component;
.source "WndHero.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BuffSlot"
.end annotation


# instance fields
.field public buff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

.field public icon:Lcom/watabou/noosa/Image;

.field public txt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;->buff:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 3
    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->icon()I

    move-result v0

    .line 4
    new-instance v1, Lcom/watabou/noosa/Image;

    iget-object v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;

    .line 5
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;->icons:Lcom/watabou/gltextures/SmartTexture;

    .line 6
    invoke-direct {v1}, Lcom/watabou/noosa/Image;-><init>()V

    .line 7
    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 8
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;->icon:Lcom/watabou/noosa/Image;

    .line 9
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;

    .line 10
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;->film:Lcom/watabou/noosa/TextureFilm;

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/TextureFilm;->get(Ljava/lang/Object;)Lcom/watabou/utils/RectF;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/watabou/noosa/Image;->frame(Lcom/watabou/utils/RectF;)V

    .line 12
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;->icon:Lcom/watabou/noosa/Image;

    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->tintIcon(Lcom/watabou/noosa/Image;)V

    .line 13
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;->icon:Lcom/watabou/noosa/Image;

    iget v0, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v0, p1, Lcom/watabou/noosa/Visual;->y:F

    .line 14
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 15
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;->txt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 16
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;->icon:Lcom/watabou/noosa/Image;

    iget v0, p2, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget p2, p2, Lcom/watabou/noosa/Visual;->height:F

    .line 17
    iget v3, p1, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr p2, v3

    div-float/2addr p2, v1

    add-float/2addr p2, v2

    .line 18
    invoke-virtual {p1, v0, p2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 19
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;->txt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 20
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;->txt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method


# virtual methods
.method public layout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;->icon:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 2
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$BuffsTab$BuffSlot;->txt:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v3, v0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v3, v4

    iget v0, v0, Lcom/watabou/noosa/Visual;->height:F

    .line 3
    iget v5, v2, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v0, v5

    div-float/2addr v0, v4

    add-float/2addr v0, v1

    .line 4
    invoke-virtual {v2, v3, v0}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    return-void
.end method
