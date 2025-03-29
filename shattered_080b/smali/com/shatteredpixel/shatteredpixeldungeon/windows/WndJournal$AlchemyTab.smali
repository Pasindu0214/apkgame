.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;
.super Lcom/watabou/noosa/ui/Component;
.source "WndJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlchemyTab"
.end annotation


# static fields
.field public static currentPageIdx:I

.field public static final spriteIndexes:[I


# instance fields
.field public body:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

.field public list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

.field public pageButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

.field public recipes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;",
            ">;"
        }
    .end annotation
.end field

.field public title:Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->spriteIndexes:[I

    const/4 v0, -0x1

    .line 2
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->currentPageIdx:I

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0xc
        0x7
        0x8
        0x9
        0xb
        0xd
        0xe
        0xf
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->recipes:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 8

    const/16 v0, 0x9

    new-array v1, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    .line 1
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->pageButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_1

    .line 2
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->pageButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab$1;

    const-string v6, ""

    invoke-direct {v5, p0, v6, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;Ljava/lang/String;I)V

    aput-object v5, v4, v2

    .line 3
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    .line 4
    iget-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->hasPage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->pageButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v4, v4, v2

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SOMETHING:I

    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->spriteIndexes:[I

    aget v7, v7, v2

    add-int/2addr v6, v7

    invoke-direct {v5, v6, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon(Lcom/watabou/noosa/Image;)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->pageButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v4, v4, v2

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SOMETHING:I

    invoke-direct {v5, v6, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 7
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->pageButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    .line 8
    :goto_1
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->pageButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->title:Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    .line 10
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ALCH_PAGE:I

    .line 11
    invoke-direct {v2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    .line 12
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, v3}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 13
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->title:Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    const/4 v0, 0x6

    .line 15
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->body:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 16
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    new-instance v1, Lcom/watabou/noosa/ui/Component;

    invoke-direct {v1}, Lcom/watabou/noosa/ui/Component;-><init>()V

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;-><init>(Lcom/watabou/noosa/ui/Component;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    .line 17
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public layout()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/high16 v3, 0x41900000    # 18.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 3
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->pageButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    array-length v5, v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    :goto_0
    if-ge v2, v1, :cond_2

    .line 4
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->pageButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v5, v5, v2

    int-to-float v6, v2

    mul-float v6, v6, v0

    invoke-virtual {v5, v6, v4, v0, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 5
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->pageButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v5, v5, v2

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v0, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 7
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->pageButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v7, v7, v2

    invoke-virtual {v7, v5, v6, v0, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 8
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->pageButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v7, v7, v2

    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    add-float/2addr v5, v0

    const/4 v7, 0x3

    if-ne v2, v7, :cond_1

    add-float/2addr v6, v3

    .line 9
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v0, v5

    const/4 v5, 0x0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->pageButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    iget v5, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v6, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->pageButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v2, v7, v2

    .line 11
    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    sub-float/2addr v6, v2

    sub-float/2addr v6, v3

    .line 12
    invoke-virtual {v0, v4, v1, v5, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 13
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->updateList()V

    return-void
.end method

.method public final updateList()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    .line 1
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->currentPageIdx:I

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->pageButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v2, v2, v1

    .line 3
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon:Lcom/watabou/noosa/Image;

    const v3, 0xffff44

    .line 4
    invoke-virtual {v2, v3}, Lcom/watabou/noosa/Visual;->color(I)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->pageButtons:[Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    aget-object v2, v2, v1

    .line 6
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->icon:Lcom/watabou/noosa/Image;

    .line 7
    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->resetColor()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->currentPageIdx:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->recipes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {v2}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 11
    invoke-virtual {v2}, Lcom/watabou/noosa/Group;->destroy()V

    goto :goto_2

    .line 12
    :cond_4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->recipes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 13
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    .line 14
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->content:Lcom/watabou/noosa/ui/Component;

    .line 15
    invoke-virtual {v1}, Lcom/watabou/noosa/Group;->clear()V

    .line 16
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->title:Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 17
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->currentPageIdx:I

    .line 18
    iget-object v6, v4, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    new-array v7, v0, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pageTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 19
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 20
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->title:Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    .line 21
    iget v4, p0, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    .line 22
    invoke-virtual {v2, v6, v6, v4, v5}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 23
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->title:Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 24
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->body:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 25
    iget v4, p0, Lcom/watabou/noosa/ui/Component;->width:F

    float-to-int v4, v4

    .line 26
    invoke-virtual {v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 27
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->body:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ALCHEMY_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->currentPageIdx:I

    .line 28
    iget-object v7, v4, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pages:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    aget-object v5, v7, v5

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pageBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-virtual {v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 30
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->body:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->title:Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-virtual {v4}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v4

    invoke-virtual {v2, v6, v4}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 31
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->body:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 32
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->currentPageIdx:I

    .line 33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    packed-switch v2, :pswitch_data_0

    .line 34
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$SeedToPotion;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    new-array v9, v3, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed$PlaceHolder;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed$PlaceHolder;-><init>()V

    goto/16 :goto_7

    .line 35
    :pswitch_0
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/MagicalPorter$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/MagicalPorter$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/PhaseShift$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/PhaseShift$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/WildEnergy$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/BeaconOfReturning$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/AquaBlast$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/AquaBlast$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/FeatherFall$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/FeatherFall$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ReclaimTrap$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/CurseInfusion$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/CurseInfusion$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/MagicalInfusion$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/MagicalInfusion$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Alchemize$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Alchemize$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Recycle$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/Recycle$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 50
    :pswitch_1
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/CausticBrew$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/CausticBrew$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/InfernalBrew$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/InfernalBrew$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/BlizzardBrew$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/BlizzardBrew$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/ShockingBrew$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/brews/ShockingBrew$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfHoneyedHealing$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfHoneyedHealing$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfMight$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfAquaticRejuvenation$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfDragonsBlood$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfDragonsBlood$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfIcyTouch$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfIcyTouch$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfToxicEssence$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfToxicEssence$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfArcaneArmor$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/elixirs/ElixirOfArcaneArmor$Recipe;-><init>()V

    invoke-direct {v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 63
    :pswitch_2
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst$Recipe;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    new-array v10, v7, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$PlaceHolder;

    invoke-direct {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$PlaceHolder;-><init>()V

    aput-object v11, v10, v0

    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed$PlaceHolder;

    invoke-direct {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed$PlaceHolder;-><init>()V

    aput-object v11, v10, v3

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;-><init>()V

    invoke-direct {v2, v5, v9, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst$Recipe;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    new-array v10, v7, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$PlaceHolder;

    invoke-direct {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion$PlaceHolder;-><init>()V

    aput-object v11, v10, v0

    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone$PlaceHolder;

    invoke-direct {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone$PlaceHolder;-><init>()V

    aput-object v11, v10, v3

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/AlchemicalCatalyst;-><init>()V

    invoke-direct {v2, v5, v9, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst$Recipe;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    new-array v9, v7, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$PlaceHolder;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$PlaceHolder;-><init>()V

    aput-object v10, v9, v0

    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone$PlaceHolder;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone$PlaceHolder;-><init>()V

    aput-object v10, v9, v3

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst;

    invoke-direct {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst;-><init>()V

    invoke-direct {v2, v5, v8, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst$Recipe;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst$Recipe;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    new-array v7, v7, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$PlaceHolder;

    invoke-direct {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$PlaceHolder;-><init>()V

    aput-object v9, v7, v0

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed$PlaceHolder;

    invoke-direct {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed$PlaceHolder;-><init>()V

    aput-object v9, v7, v3

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/items/spells/ArcaneCatalyst;-><init>()V

    invoke-direct {v2, v5, v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 69
    :pswitch_3
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll$ScrollToExotic;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll$ScrollToExotic;-><init>()V

    .line 70
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    array-length v8, v5

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_7

    aget-object v10, v5, v9

    .line 71
    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    .line 72
    new-instance v11, Ljava/util/ArrayList;

    new-array v12, v7, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    aput-object v10, v12, v0

    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone$PlaceHolder;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone$PlaceHolder;-><init>()V

    .line 73
    iput v7, v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    aput-object v10, v12, v3

    .line 74
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    invoke-virtual {v2, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ExoticScroll$ScrollToExotic;->sampleOutput(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v12

    invoke-direct {v10, v2, v11, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 76
    :pswitch_4
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion$PotionToExotic;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion$PotionToExotic;-><init>()V

    .line 77
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->POTION:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    array-length v8, v5

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v8, :cond_7

    aget-object v10, v5, v9

    .line 78
    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/Potion;

    .line 79
    new-instance v11, Ljava/util/ArrayList;

    new-array v12, v7, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    aput-object v10, v12, v0

    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed$PlaceHolder;

    invoke-direct {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed$PlaceHolder;-><init>()V

    .line 80
    iput v7, v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    aput-object v10, v12, v3

    .line 81
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    invoke-virtual {v2, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/ExoticPotion$PotionToExotic;->sampleOutput(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v12

    invoke-direct {v10, v2, v11, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 83
    :pswitch_5
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;-><init>()V

    .line 84
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->validIngredients:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x0

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    if-ne v9, v7, :cond_5

    .line 85
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    .line 86
    :cond_5
    invoke-static {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 87
    new-instance v11, Ljava/util/ArrayList;

    new-array v12, v7, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    invoke-direct {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;-><init>()V

    aput-object v13, v12, v0

    aput-object v10, v12, v3

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    new-instance v10, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    invoke-virtual {v2, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$EnhanceBomb;->sampleOutput(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v12

    invoke-direct {v10, v2, v11, v12}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v9, v3

    goto :goto_5

    .line 89
    :pswitch_6
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat$oneMeat;

    invoke-direct {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat$oneMeat;-><init>()V

    invoke-direct {v2, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat$twoMeat;

    invoke-direct {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat$twoMeat;-><init>()V

    invoke-direct {v2, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat$threeMeat;

    invoke-direct {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/StewedMeat$threeMeat;-><init>()V

    invoke-direct {v2, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe$SimpleRecipe;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MeatPie$Recipe;

    invoke-direct {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MeatPie$Recipe;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    new-array v5, v5, [Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;

    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;

    invoke-direct {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Pasty;-><init>()V

    aput-object v11, v5, v0

    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;

    invoke-direct {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;-><init>()V

    aput-object v11, v5, v3

    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat$PlaceHolder;

    invoke-direct {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MysteryMeat$PlaceHolder;-><init>()V

    aput-object v11, v5, v7

    .line 95
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MeatPie;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/MeatPie;-><init>()V

    invoke-direct {v2, v9, v10, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 96
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit$CookFruit;

    invoke-direct {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit$CookFruit;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    new-array v7, v7, [Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;

    invoke-direct {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;-><init>()V

    aput-object v9, v7, v0

    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed$PlaceHolder;

    invoke-direct {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed$PlaceHolder;-><init>()V

    aput-object v9, v7, v3

    .line 100
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$4;

    invoke-direct {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$4;-><init>()V

    invoke-direct {v2, v5, v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 101
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 102
    :pswitch_7
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;-><init>()V

    .line 103
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->SCROLL:Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/items/Generator$Category;->classes:[Ljava/lang/Class;

    array-length v7, v5

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_7

    aget-object v9, v5, v8

    .line 104
    invoke-static {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    .line 105
    invoke-virtual {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->isKnown()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v9}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;->anonymize()V

    .line 106
    :cond_6
    new-instance v10, Ljava/util/ArrayList;

    new-array v11, v3, [Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll;

    aput-object v9, v11, v0

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    invoke-virtual {v2, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/Scroll$ScrollToStone;->sampleOutput(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v11

    invoke-direct {v9, v2, v10, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 108
    :goto_7
    iput v5, v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    aput-object v10, v9, v0

    .line 109
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$3;

    sget v9, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->POTION_HOLDER:I

    invoke-direct {v5, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe$3;-><init>(I)V

    invoke-direct {v2, v7, v8, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;Ljava/util/ArrayList;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_7
    :goto_8
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->body:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    .line 111
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 112
    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v7, :cond_e

    .line 113
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_8

    .line 114
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/high16 v7, 0x40c00000    # 6.0f

    add-float/2addr v2, v7

    :cond_8
    const/4 v7, 0x0

    .line 115
    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_9

    int-to-float v9, v7

    .line 116
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    .line 117
    iget v10, v10, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v10, v9

    iget v11, p0, Lcom/watabou/noosa/ui/Component;->width:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_9

    .line 118
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    .line 120
    iget v7, v7, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v9, v7

    float-to-int v7, v9

    goto :goto_a

    .line 121
    :cond_9
    iget v9, p0, Lcom/watabou/noosa/ui/Component;->width:F

    int-to-float v7, v7

    sub-float/2addr v9, v7

    .line 122
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v3

    int-to-float v7, v7

    div-float/2addr v9, v7

    move v7, v9

    .line 123
    :goto_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    const v11, -0xddddde

    const/high16 v12, 0x41800000    # 16.0f

    if-nez v10, :cond_b

    .line 124
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shatteredpixel/shatteredpixeldungeon/ui/QuickRecipe;

    .line 125
    invoke-virtual {v10, v7, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 126
    iget v13, v10, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v13, v9

    add-float/2addr v7, v13

    .line 127
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    .line 128
    new-instance v13, Lcom/watabou/noosa/ColorBlock;

    invoke-direct {v13, v8, v12, v11}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    .line 129
    iput v2, v13, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v9, v11

    sub-float v11, v7, v11

    const/high16 v12, 0x3f000000    # 0.5f

    sub-float/2addr v11, v12

    .line 130
    iput v11, v13, Lcom/watabou/noosa/Visual;->x:F

    .line 131
    invoke-static {v13}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 132
    invoke-virtual {v1, v13}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 133
    :cond_a
    iget-object v11, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->recipes:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-virtual {v1, v10}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_b

    .line 135
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_c

    .line 136
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 137
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 138
    new-instance v7, Lcom/watabou/noosa/ColorBlock;

    .line 139
    iget v9, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 140
    invoke-direct {v7, v9, v8, v11}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    add-float/2addr v12, v2

    .line 141
    iput v12, v7, Lcom/watabou/noosa/Visual;->y:F

    .line 142
    iput v6, v7, Lcom/watabou/noosa/Visual;->x:F

    .line 143
    invoke-virtual {v1, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_d
    const/high16 v7, 0x41880000    # 17.0f

    add-float/2addr v2, v7

    .line 144
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_9

    :cond_e
    sub-float/2addr v2, v8

    .line 145
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 146
    invoke-virtual {v1, v0, v2}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 147
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    .line 148
    iget v1, v0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 149
    iget v2, v0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 151
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$AlchemyTab;->list:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;

    invoke-virtual {v0, v6, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;->scrollTo(FF)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
