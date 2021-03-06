/****** Object:  Table [procfwk].[PipelineProcesses]    Script Date: 19/02/2020 19:10:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [procfwk].[PipelineProcesses](
	[PipelineId] [int] IDENTITY(1,1) NOT NULL,
	[StageId] [int] NOT NULL,
	[PipelineName] [nvarchar](200) NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_PipelineProcesses] PRIMARY KEY CLUSTERED 
(
	[PipelineId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [procfwk].[PipelineProcesses] ADD  CONSTRAINT [DF_PipelineProcesses_Enabled]  DEFAULT ((1)) FOR [Enabled]
GO
ALTER TABLE [procfwk].[PipelineProcesses]  WITH CHECK ADD  CONSTRAINT [FK_PipelineProcesses_ProcessingStageDetails] FOREIGN KEY([StageId])
REFERENCES [procfwk].[ProcessingStageDetails] ([StageId])
GO
ALTER TABLE [procfwk].[PipelineProcesses] CHECK CONSTRAINT [FK_PipelineProcesses_ProcessingStageDetails]
GO
