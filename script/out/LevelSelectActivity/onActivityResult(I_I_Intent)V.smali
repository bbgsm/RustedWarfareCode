.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1570
    packed-switch p1, :pswitch_data_0

    .line 1579
    invoke-super {p0, p1, p2, p3}, Lcom/corrodinggames/rts/appFramework/a3;->onActivityResult(IILandroid/content/Intent;)V

    .line 1580
    :goto_0
    return-void

    .line 1574
    :pswitch_0
    iget-object v0, p0, Lcom/corrodinggames/rts/appFramework/LevelSelectActivity;->fileAddedCallback:Ljava/lang/Runnable;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/corrodinggames/rts/appFramework/ModsActivity;->onFileSelectResult(Landroid/app/Activity;IILandroid/content/Intent;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1570
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
