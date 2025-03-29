.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;
.source "WndBlacksmith.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->onClick()V

    return-void
.end method

.method public onPointerDown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->bg:Lcom/watabou/noosa/NinePatch;

    const v1, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->brightness(F)V

    .line 2
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_click.mp3"

    .line 3
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public onPointerUp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBlacksmith$ItemButton;->bg:Lcom/watabou/noosa/NinePatch;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->resetColor()V

    return-void
.end method
