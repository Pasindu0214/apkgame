.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList$ListItem;
.super Lcom/watabou/noosa/ui/Component;
.source "BadgesList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItem"
.end annotation


# instance fields
.field public badge:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

.field public icon:Lcom/watabou/noosa/Image;

.field public label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList;Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList$ListItem;->badge:Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList$ListItem;->icon:Lcom/watabou/noosa/Image;

    iget v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->image:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/BadgeBanner;->image(I)Lcom/watabou/noosa/Image;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList$ListItem;->label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges$Badge;->desc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 1

    .line 1
    new-instance v0, Lcom/watabou/noosa/Image;

    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList$ListItem;->icon:Lcom/watabou/noosa/Image;

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v0, 0x6

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList$ListItem;->label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 4
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public layout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList$ListItem;->icon:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 2
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget v3, v0, Lcom/watabou/noosa/Visual;->height:F

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList$ListItem;->label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList$ListItem;->icon:Lcom/watabou/noosa/Image;

    iget v2, v1, Lcom/watabou/noosa/Visual;->x:F

    iget v1, v1, Lcom/watabou/noosa/Visual;->width:F

    add-float/2addr v2, v1

    add-float/2addr v2, v4

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 5
    iget v5, v0, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BadgesList$ListItem;->label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    return-void
.end method
