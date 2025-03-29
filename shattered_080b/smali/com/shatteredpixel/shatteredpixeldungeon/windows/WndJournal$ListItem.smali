.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;
.super Lcom/watabou/noosa/ui/Component;
.source "WndJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItem"
.end annotation


# instance fields
.field public depth:Lcom/watabou/noosa/BitmapText;

.field public icon:Lcom/watabou/noosa/Image;

.field public label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

.field public line:Lcom/watabou/noosa/ColorBlock;


# direct methods
.method public constructor <init>(Lcom/watabou/noosa/Image;Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->icon:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    if-ltz p3, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p1}, Lcom/watabou/noosa/BitmapText;->measure()V

    .line 6
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    if-ne p3, p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const p2, 0xffff44

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 8
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 3

    const/4 v0, 0x7

    .line 1
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    new-instance v0, Lcom/watabou/noosa/Image;

    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->icon:Lcom/watabou/noosa/Image;

    .line 4
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 5
    new-instance v0, Lcom/watabou/noosa/BitmapText;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    const-string v2, ""

    .line 6
    invoke-direct {v0, v2, v1}, Lcom/watabou/noosa/BitmapText;-><init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V

    .line 7
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->depth:Lcom/watabou/noosa/BitmapText;

    .line 8
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 9
    new-instance v0, Lcom/watabou/noosa/ColorBlock;

    const v1, -0xddddde

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v1}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->line:Lcom/watabou/noosa/ColorBlock;

    .line 10
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public layout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->icon:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    .line 2
    iget v3, p0, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v3, v2

    .line 3
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    iput v3, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->icon:Lcom/watabou/noosa/Image;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->depth:Lcom/watabou/noosa/BitmapText;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->icon:Lcom/watabou/noosa/Image;

    iget v3, v1, Lcom/watabou/noosa/Visual;->x:F

    iget v1, v1, Lcom/watabou/noosa/Visual;->width:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v5

    sub-float/2addr v1, v5

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->depth:Lcom/watabou/noosa/BitmapText;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->icon:Lcom/watabou/noosa/Image;

    iget v3, v1, Lcom/watabou/noosa/Visual;->y:F

    iget v1, v1, Lcom/watabou/noosa/Visual;->height:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v5

    sub-float/2addr v1, v5

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->line:Lcom/watabou/noosa/ColorBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ColorBlock;->size(FF)V

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->line:Lcom/watabou/noosa/ColorBlock;

    const/4 v1, 0x0

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 10
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->icon:Lcom/watabou/noosa/Image;

    invoke-virtual {v3}, Lcom/watabou/noosa/Visual;->width()F

    move-result v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x41000000    # 8.0f

    sub-float/2addr v1, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->icon:Lcom/watabou/noosa/Image;

    iget v3, v1, Lcom/watabou/noosa/Visual;->x:F

    invoke-virtual {v1}, Lcom/watabou/noosa/Visual;->width()F

    move-result v1

    add-float/2addr v1, v3

    add-float/2addr v1, v2

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v3, v2

    .line 13
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 14
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 15
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v2, v5

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    return-void
.end method
